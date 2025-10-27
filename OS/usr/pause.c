#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    if(argc != 2){
        printf(2," Usage: pause (accepts 1 arg --> no. of seconds)... \n");
        exit();
    }
    if (argv[1][0] == '-') {
        printf(2, "pause: invalid argument\n");
        exit(); 
    }

    int seconds = atoi(argv[1]);
    printf(1, "Pausing for %d seconds...\n", seconds);
    int s = sleep(seconds * 10);
    if (s < 0) {
        printf(2, "pause: sleep failed\n");
        exit();
    }
    exit();
}