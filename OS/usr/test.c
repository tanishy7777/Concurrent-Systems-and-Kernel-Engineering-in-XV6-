// Add necessary header files here

#include "types.h"
#include "user.h"
#include "pstat.h"
#include "fcntl.h"

#define N (8 * (1 << 20))
#define UADDR_SZ (1 << 28)
#define PTE_SZ 4096
#define USYSPAGE (UADDR_SZ - PTE_SZ)

struct usyscall {
    int pid;
};

int ugetpid(void) {
    struct usyscall *u = (struct usyscall *)USYSPAGE;
    return u->pid;
}

void print_pt();
void print_kpt();
void ugetpid_test();

int
main(int argc, char *argv[])
{
    print_pt();
    ugetpid_test();
    print_kpt();
    printf(1, "pttest: all tests succeeded\n");
    exit();
}

char *testname = "";

void
err(char *why)
{
    printf(1, "pttest: %s failed: %s, pid=%d\n", testname, why, getpid());
    exit();
}

void
print_pt()
{
    printf(1, "print_pt starting\n");
    printPages();
    printf(1, "print_pt: OK\n");
}

void
ugetpid_test()
{
    int i;

    printf(1, "ugetpid_test starting\n");
    testname = "ugetpid_test";

    for (i = 0; i < 64; i++) {
        int ret = fork();

        if (ret < 0) {
            err("fork failed");
            break;
        }

        if (ret == 0) {
            if (getpid() != ugetpid()) {
                err("mismatched PID");
            }
            exit();
        } else {
            wait();
        }
    }

    printf(1, "ugetpid_test: OK\n");
}

void
print_kpt()
{
    printf(1, "print_kpt starting\n");
    kpt(); // Implement in vm.c to access kernel pagetable
    printf(1, "print_kpt: OK\n");
}
