#ifndef PSTAT_H
#define PSTAT_H

#include "param.h"

struct pstat {
  int inuse[NPROC]; // whether this slot of the process table is in use (1 or 0)
  int pid[NPROC]; // PID of each process
  int tickets[NPROC];  // how many tickets does this process have?
  int runticks[NPROC];  // total number of timer ticks this process has been scheduled
  int boostsleft[NPROC]; // how many more ticks will this process be boosted?
};

#endif // PSTAT_H