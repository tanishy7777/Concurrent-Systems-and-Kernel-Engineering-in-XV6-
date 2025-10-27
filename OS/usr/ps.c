#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"


int
main(int argc, char *argv[])
{    
    if(argc != 1){
        printf(2, "Usage: ps(no args)\n");
        exit();
    }
    disproc();
    exit();
}
