#include "types.h"
#include "stat.h"
#include "user.h"
#include "param.h"

int
main(int argc, char *argv[])
{
    if(argc != 1){
        printf(2," Usage: uptime (no args)... \n");
        exit();
    }

    int xticks = uptime();
    printf(1,"Amount of time since boot: %d seconds \n",(xticks/HZ));
    printPages();
    exit();
}