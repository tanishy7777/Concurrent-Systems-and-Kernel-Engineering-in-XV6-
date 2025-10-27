/*----------xv6 sync lab----------*/
#include "types.h"
#include "arm.h"
#include "spinlock.h"
#include "defs.h"
#include "barrier.h"

struct spinlock barrierlock;

struct barrier{
  int ctr;
  int chan;
};
//define any variables needed here
// struct barrier* Barrier;
struct barrier mybarrier;
struct barrier* Barrier = &mybarrier;


int
barrier_init(int n)
{
  //to be done
  cprintf("Barrier INITIALIZED\n");
  initlock(&barrierlock, "barrier");
  acquire(&barrierlock);
  Barrier -> ctr = n;
  Barrier -> chan = 0;
  release(&barrierlock);
  return 0;
}

int
barrier_check(void)
{
  //to be done
  acquire(&barrierlock);
  (Barrier -> ctr) = Barrier -> ctr -1;
  cprintf("Barrier Counter: %d\n",Barrier->ctr);
  if(Barrier -> ctr == 0){
    Barrier -> chan = 1;
    wakeup(&(Barrier -> chan));
  }else{
    sleep(&(Barrier->chan),&barrierlock);
  }
  release(&barrierlock);
  return 0;
}

/*----------xv6 sync lock end----------*/
