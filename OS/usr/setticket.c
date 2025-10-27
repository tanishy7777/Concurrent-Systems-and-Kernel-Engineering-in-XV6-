#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"


int
main(int argc, char *argv[])
{    
    if(argc != 3){
        printf(2, "Usage: setticket(2 args...)\n");
        exit();
    }
    setticket(atoi(argv[1]), atoi(argv[2]));
    exit();
}
