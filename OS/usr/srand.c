#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"


int
main(int argc, char *argv[])
{    
    if(argc != 2){
        printf(2, "Usage: srand(1 arg only ....)\n");
        exit();
    }
    srand(atoi(argv[1]));
    exit();
}
