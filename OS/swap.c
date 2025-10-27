#include "file.h"
#include "stat.h"
#include "swap.h"
#include "defs.h"
#include "mmu.h"

struct file *swapfile;
struct swap_entry* swape;

void
swapinit(void)
{
  begin_op();
  struct inode *ip = create("swapfile", T_FILE, 0, 0);
  if(ip == 0){
    panic("cannot create swapfile");
  }
  swapfile = filealloc();
  if(swapfile == 0){
    panic("cannot alloc file for swap");
  }

  ilock(ip);
  iunlock(ip);

  swapfile->type = FD_INODE;
  swapfile->ip = ip;
  swapfile->off = 0;
  swapfile->readable = 1;
  swapfile->writable = 1;
  swape->valid = 0;
  end_op();
}


void evict(pde_t* pgdir){
    int va = PTE_SZ*3+1;
    pte_t* page = walkpgdir(pgdir, (void*)va, 0);
    swape -> valid = 1;
    swape -> va = va;
    filewrite(swapfile, (char*)va, PTE_SZ);
    return va;
}