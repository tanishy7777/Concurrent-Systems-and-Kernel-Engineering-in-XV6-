#include "types.h"
#include "stat.h"
#include "fcntl.h"
#include "user.h"



static inline int
xchg(volatile int *addr, int newval)
{
    int old;
    unsigned int tmp;

    do {
        __asm__ volatile(
                "ldrex %0, [%2]\n"
                "strex %1, %3, [%2]\n"
                : "=&r" (old), "=&r" (tmp)
                : "r" (addr), "r" (newval)
                : "cc", "memory"
                );
    } while (tmp != 0);

    return old;
}



char*
strcpy(char *s, char *t)
{
    char *os;
    
    os = s;
    while((*s++ = *t++) != 0)
        ;
    return os;
}

int
strcmp(const char *p, const char *q)
{
    while(*p && *p == *q)
        p++, q++;
    return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
    int n;
    
    for(n = 0; s[n]; n++)
        ;
    return n;
}

void*
memset(void *dst, int v, uint n)
{
	uint8	*p;
	uint8	c;
	uint32	val;
	uint32	*p4;

	p   = dst;
	c   = v & 0xff;
	val = (c << 24) | (c << 16) | (c << 8) | c;

	// set bytes before whole uint32
	for (; (n > 0) && ((uint)p % 4); n--, p++){
		*p = c;
	}

	// set memory 4 bytes a time
	p4 = (uint*)p;

	for (; n >= 4; n -= 4, p4++) {
		*p4 = val;
	}

	// set leftover one byte a time
	p = (uint8*)p4;

	for (; n > 0; n--, p++) {
		*p = c;
	}

	return dst;
}

char*
strchr(const char *s, char c)
{
    for(; *s; s++)
        if(*s == c)
            return (char*)s;
    return 0;
}

char*
gets(char *buf, int max)
{
    int i, cc;
    char c;
    
    for(i=0; i+1 < max; ){
        cc = read(0, &c, 1);
        if(cc < 1)
            break;
        buf[i++] = c;
        if(c == '\n' || c == '\r')
            break;
    }
    buf[i] = '\0';
    return buf;
}

int
stat(char *n, struct stat *st)
{
    int fd;
    int r;
    
    fd = open(n, O_RDONLY);
    if(fd < 0)
        return -1;
    r = fstat(fd, st);
    close(fd);
    return r;
}

int
atoi(const char *s)
{
    int n;
    
    n = 0;
    while('0' <= *s && *s <= '9')
        n = n*10 + *s++ - '0';
    return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
    char *dst, *src;
    
    dst = vdst;
    src = vsrc;
    while(n-- > 0)
        *dst++ = *src++;
    return vdst;
}

//void initiateLock(struct lock* l) {
//    xchg(&l->lockvar, 0);
////    l->lockvar = 0;
//}

void initiateLock(struct lock* l) {
    l->lockvar = 0;      // unlocked
    l->isInitiated = 1;  // mark as initialized
}

void acquireLock(struct lock* l) {
    if (l->lockvar == -1) printf(2, "Error: trying to acquire an uninitialized lock\n");
    while(xchg(&l->lockvar, 1) != 0);
}

void releaseLock(struct lock* l) {
    if (l->lockvar != 1) printf(2, "Error: trying to release an uninitialized/unacquired lock\n");
    xchg(&l->lockvar, 0);
//    l->lockvar = 0;
}


void initiateCondVar(struct condvar* cv) {
    if(cv->isInitiated) return;       // already initialized
    cv->var = getChannel();          // syscall to get unique channel
    cv->isInitiated = 1;
}

void condWait(struct condvar* cv, struct lock* l) {
    if (!cv->isInitiated) {
        printf(2, "Error: condvar not initialized!\n");
        return;
    }
    if (!l->isInitiated) {
        printf(2, "Error: lock not initialized!\n");
        return;
    }

    releaseLock(l);          // release the lock so others can proceed
    sleepChan(cv->var);     // go to sleep on the CV's channel
    acquireLock(l);          // reacquire the lock after waking
}

void broadcast(struct condvar* cv) {
    if (!cv->isInitiated) {
        printf(2, "Error: condvar not initialized!\n");
        return;
    }

    sigChan(cv->var);      // wake all threads waiting on this CV
}

void signal(struct condvar* cv) {
    if (!cv->isInitiated) {
        printf(2, "Error: condvar not initialized!\n");
        return;
    }

    sigOneChan(cv->var);   // wake one thread waiting on this CV
}

void semInit(struct semaphore* s, int initVal) {
    s->ctr = initVal;          // initial counter
    initiateLock(&s->l);       // initialize the lock
    initiateCondVar(&s->cv);   // initialize the condition variable
    s->isInitiated = 1;        // mark semaphore as initialized
}

void semDown(struct semaphore* s) {
    if (!s->isInitiated) {
        printf(2, "Error: semaphore not initialized!\n");
        return;
    }

    acquireLock(&s->l);
    while (s->ctr == 0) {
        condWait(&s->cv, &s->l);
    }
    s->ctr--;   // consume one unit *after* availability confirmed
    releaseLock(&s->l);
}


void semUp(struct semaphore* s) {
    if (!s->isInitiated) {
        printf(2, "Error: semaphore not initialized!\n");
        return;
    }

    acquireLock(&s->l);
    s->ctr++;             // release one unit
    signal(&s->cv);       // wake **one** waiting thread
    releaseLock(&s->l);
}

