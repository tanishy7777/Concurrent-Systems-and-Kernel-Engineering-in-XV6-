#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"


int
main(int argc, char *argv[])
{    
    if(argc != 2){
        printf(2, "Usage: getpinfo(1 arg )\n");
        exit();
    }
    getpinfo(atoi(argv[1]));
    exit();
}
