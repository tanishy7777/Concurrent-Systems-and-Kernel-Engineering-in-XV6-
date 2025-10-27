#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "pstat.h"
#include "barrier.h"
#include "spinlock.h"

extern struct {
    struct spinlock lock;
    struct proc proc[NPROC];
} ptable;

struct proc* allocproc(int pid);
pte_t* walkpgdir(pde_t *pgdir, const void *va, int alloc);
void tlb_flush(void); // optional, some ports provide a TLB invalidate helper

#ifndef PGSIZE
#define PGSIZE 4096
#endif

int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }
    return addr;
}

int sys_sleep(void)
{
    int n;
    uint ticks0;

    if(argint(0, &n) < 0) {
        return -1;
    }

    acquire(&tickslock);

    ticks0 = ticks;
    proc -> sleepTime = n;
    sleep(&ticks, &tickslock);

    while(ticks - ticks0 < n){
        if(proc->killed){
            release(&tickslock);
            return -1;
        }
    }

    release(&tickslock);
    return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}


int sys_disproc(void) {
    disproc();
    return 0;
}

int sys_srand(void) {
    uint seed;
    if(argint(0, (int*)&seed) < 0) {
        return -1;
    }
    srand(seed);
    return 0;
}

int sys_setticket(void) {
    int tickets;
    int pid;
    if(argint(0, &tickets) < 0) {
        return -1;
    }
    if(argint(1, &pid) < 0) {
        return -1;
    }

    if(tickets < 0) {
        cprintf("Number of tickets must be greater than 0\n");
        return -1;
    }

    return setticket(tickets,pid);
}

int sys_getpinfo(void) {
    struct pstat *ps;
    if (argptr(0, (char**) &ps, sizeof(*ps)) < 0)
        return -1;

    int ret = getpinfo(&ps);
    return ret;
}

int sys_printPages(void) {
    printPages();
    return 0;
}

int sys_kpt(void)
{
    kpt_print();
    return 0;
}

int
sys_thread_create(void) {
    uint user_tid_ptr;
    uint start_func;
    uint arg;

    struct proc *np;
    struct proc *cur = proc;
    struct proc *leader = 0;
    uint sp;
    uint ustack_top;
    uint zero = 0;
    int i;

    if (argint(0, (int *)&user_tid_ptr) < 0)
        return -1;
    if (argint(1, (int *)&start_func) < 0)
        return -1;
    if (argint(2, (int *)&arg) < 0)
        return -1;

    // find leader (main thread)
    if (cur->is_thread) {
        for (struct proc *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
            if (p->pid == cur->mainpid) { leader = p; break; }
        }
        if (!leader)
            return -1;
    } else {
        leader = cur;
    }

    acquire(&ptable.lock);

    if ((np = allocproc(leader->pid)) == 0) {
        release(&ptable.lock);
        return -1;
    }

    np->is_thread = 1;
    np->mainpid = leader->pid;

    // share address space and size
    np->pgdir = leader->pgdir;
    np->sz = leader->sz;
    np->ustack = 0;

    for (i = 0; i < NOFILE; i++) {
        if (leader->ofile[i]) {
            np->ofile[i] = leader->ofile[i];
            filedup(np->ofile[i]);
        } else {
            np->ofile[i] = 0;
        }
    }

    if (leader->cwd)
        np->cwd = idup(leader->cwd);
    else
        np->cwd = 0;

    sp = leader->sz;
    if (allocuvm(leader->pgdir, leader->sz, leader->sz + PGSIZE) == 0) {
        // cleanup
        for (i = 0; i < NOFILE; i++) if (np->ofile[i]) fileclose(np->ofile[i]);
        if (np->cwd) { iput(np->cwd); np->cwd = 0; }

        if (np->kstack) {
            kfree(np->kstack, 12);
            np->kstack = 0;
        }
        np->pid = 0;
        np->state = UNUSED;
        np->is_thread = 0;
        np->mainpid = 0;

        release(&ptable.lock);
        return -1;
    }

    leader->sz += PGSIZE;
    np->sz = leader->sz;
    np->ustack = sp;

    // copy trapframe from leader
    *np->tf = *leader->tf;

    ustack_top = sp + PGSIZE;

    ustack_top -= 4;
    if (copyout(leader->pgdir, ustack_top, (char *)&arg, 4) < 0) {
        // undo allocation of user page
        deallocuvm(leader->pgdir, leader->sz, leader->sz - PGSIZE);
        leader->sz -= PGSIZE;

        for (i = 0; i < NOFILE; i++) if (np->ofile[i]) fileclose(np->ofile[i]);
        if (np->cwd) { iput(np->cwd); np->cwd = 0; }

        if (np->kstack) { kfree(np->kstack, 12); np->kstack = 0; }
        np->pid = 0;
        np->state = UNUSED;
        np->is_thread = 0;
        np->mainpid = 0;

        release(&ptable.lock);
        return -1;
    }

    // push a fake return address
    ustack_top -= 4;
    if (copyout(leader->pgdir, ustack_top, (char *)&zero, 4) < 0) {
        deallocuvm(leader->pgdir, leader->sz, leader->sz - PGSIZE);
        leader->sz -= PGSIZE;
        for (i = 0; i < NOFILE; i++) if (np->ofile[i]) fileclose(np->ofile[i]);
        if (np->cwd) { iput(np->cwd); np->cwd = 0; }
        if (np->kstack) { kfree(np->kstack, 12); np->kstack = 0; }
        np->pid = 0;
        np->state = UNUSED;
        np->is_thread = 0;
        np->mainpid = 0;

        release(&ptable.lock);
        return -1;
    }

    np->tf->sp_usr = ustack_top;
    np->tf->r0 = arg;
    np->tf->lr_usr = 0;
    np->tf->pc = start_func;

    np->parent = leader;

    np->state = RUNNABLE;

    uint tid = np->pid;
    if (copyout(leader->pgdir, user_tid_ptr, (char *)&tid, sizeof(tid)) < 0) {
        release(&ptable.lock);
        return -1;
    }

    release(&ptable.lock);
    return 0;
}

int
sys_thread_exit(void) {
    struct proc *curproc = proc;

    // if main thread calls this, do nothing
    if (!curproc->is_thread) {
        return 0;
    }

    curproc->state = ZOMBIE;
    wakeup((void*)curproc);

    struct proc *leader = 0;
    for (struct proc *p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->pid == curproc->mainpid) { leader = p; break; }
    }
    if (leader && leader != curproc)
        wakeup((void*)leader);

    acquire(&ptable.lock);

    sched();
    panic("zombie exit");
    return 0;
}

int
sys_thread_join(void) {
    uint tid;
    if (argint(0, (int *) &tid) < 0)
        return -1;

    acquire(&ptable.lock);

    struct proc *p;
    for (p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (p->pid == (int) tid)
            break;
    }
    if (p == &ptable.proc[NPROC]) {
        release(&ptable.lock);
        return -1;
    }

    struct proc *cur = proc;

    // only mainthreads can join
    if (cur->is_thread || p->mainpid != cur->pid) {
        release(&ptable.lock);
        return -1;
    }

    // wait until target thread becomes ZOMBIE
    while (p->state != ZOMBIE) {
        if (p->state == UNUSED) {
            release(&ptable.lock);
            return -1;
        }
        sleep((void*)p, &ptable.lock);
    }

    // free per-thread user stack safely
    if (p->ustack) {if (p->ustack + PGSIZE == cur->sz) {
            deallocuvm(cur->pgdir, cur->sz, cur->sz - PGSIZE);
            cur->sz -= PGSIZE;
        } else {
            pte_t *ptep = walkpgdir(cur->pgdir, (char*)p->ustack, 0);
            if (ptep && (*ptep & PTE_IS_VALID(*ptep))) {
                uint pa = PTE_ADDR(*ptep);
                pa &= ~(PGSIZE - 1);

                char *v = (char*)P2V(pa);

                if (((uint)v % PGSIZE) != 0) {
                    cprintf("PANIC-DBG: freeing unaligned kva=0x%x\n", (uint)v);
                    panic("kfree: unaligned free attempted");
                }

                kfree((void*)v, 12);

                // Remove mapping from page table
                *ptep = 0;

#ifdef TLBFLUSH
                tlb_flush();
#endif
            }
//            else {
//                cprintf("DBG: no valid pte to free at userstack 0x%x\n", p->ustack);
//            }
        }
        p->ustack = 0;
    }

    if (p->kstack) {
        kfree(p->kstack, 12);
        p->kstack = 0;
    }

    p->pid = 0;
    p->parent = 0;
    p->name[0] = 0;
    p->killed = 0;
    p->state = UNUSED;
    p->is_thread = 0;
    p->mainpid = 0;

    release(&ptable.lock);
    return 0;
}

int sys_barrier_init(void)
{
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }
    barrier_init(n);
    return -1;

}

int sys_barrier_check(void)
{
    barrier_check();
    return -1;
}

int sys_waitpid(void)
{
    return -1;
}

int
sys_sleepChan(void) {
    int chan;
    if(argint(0, &chan) < 0) return -1;

    acquire(&ptable.lock);
    sleep((void*)chan, &ptable.lock);   // cast channel value to pointer
    release(&ptable.lock);

    return 0;
}

static int nextChannel = 1;   // global counter

int
sys_getChannel(void)
{
    int chan;
    acquire(&ptable.lock);      // ensure mutual exclusion
    chan = nextChannel++;
    release(&ptable.lock);
    return chan;
}


void sys_sigChan(void) {
    int chan;
    if (argint(0, &chan) < 0) return;
    acquire(&ptable.lock);
    wakeup((void*)chan);
    release(&ptable.lock);
}

//void sys_sigOneChan(void) {
//    int chan;
//    if (argint(0, &chan) < 0) return;
//
//    struct proc *p;
//    acquire(&ptable.lock);
//    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
//        if(p->state == SLEEPING && p->chan == &chan){
//            p->state = RUNNABLE;
//            break; // wake only one
//        }
//    }
//    release(&ptable.lock);
//}

void sys_sigOneChan(void) {
    int chan;
    if (argint(0, &chan) < 0) return;

    struct proc *p;
    acquire(&ptable.lock);
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
        if(p->state == SLEEPING && p->chan == (void*)chan){
            p->state = RUNNABLE;
            break; // wake only one
        }
    }
    release(&ptable.lock);
}

