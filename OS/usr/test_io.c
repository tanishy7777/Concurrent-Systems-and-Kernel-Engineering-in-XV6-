// user/fairness_test.c
#include "types.h"
#include "stat.h"
#include "user.h"
#include "pstat.h"
#include "fcntl.h"

#define TICKS 100  // increase for better convergence
#define SLEEP_TICKS 20
#define MSG_SIZE 888

void io_operation(char s) {
    printf(1, "Performing io for pid: %c", s);
    int fd = open("out.txt", O_CREATE | O_WRONLY);
    if(fd < 0){
        printf(2, "open failed\n");
        exit();
    }
    close(fd);
    char big_msg[MSG_SIZE];
    for (int i = 0; i < MSG_SIZE; i++)
        big_msg[i] = 'a';
    printf(fd, big_msg);
}

int
main(int argc, char *argv[])
{
    int pidA = fork();
    if(pidA == 0){
        printf(1, "Child A\n");
        io_operation('A');
        while (1) {}
        exit();
    }
    else if (pidA < 0) {
        printf(1, "Fork failed!\n");
    }
    else {
        printf(1, "Parent A\n");
        setticket(16, pidA);
    }

    int pidB = fork();
    if(pidB == 0){
        printf(1, "Child B\n");
        while (1) {}
        exit();
    }
    else if (pidB < 0) {
        printf(1, "Fork failed!\n");
    }
    else {
        printf(1, "Parent B\n");
        setticket(4, pidB);
    }

    int pidC = fork();
    if(pidC == 0){
        printf(1, "Child C\n");
        io_operation('C');
        io_operation('C');
        while (1) {}
        exit();
    }
    else if (pidC < 0) {
        printf(1, "Fork failed!\n");
    }
    else {
        printf(1, "Parent C\n");
        setticket(80, pidC);
    }

    // let them run for a while
    sleep(TICKS);

    struct pstat ps;
    if (getpinfo(&ps) < 0) {
        printf(1, "getpinfo failed\n");
        exit();
    }
    printf(1, "getpinfo executed\n");


    printf(1, "Inuse\tPID\t\tTickets\t\tScheduled\tBoosts Left\n");
    for(int i=0; i<NPROC; i++){
        if(ps.inuse[i] == 0) {
            continue;
        }
        printf(1, "%d\t%d\t\t%d\t\t%d\t\t%d\n", ps.inuse[i], ps.pid[i], ps.tickets[i], ps.runticks[i], ps.boostsleft[i]);

    }
//    disproc();

    kill(pidA);
    kill(pidB);
    kill(pidC);
    wait();
    wait();
    wait();

    exit();
}