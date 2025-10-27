#include "types.h"
#include "stat.h"
#include "user.h"

// int
// main(int argc, char *argv[])
// {
//   srand(1);
//   int n = (1<<15);
//   if(argc > 1)
//     n = atoi(argv[1]);

//   printf(1,"Allocating %d pages...\n", n);
//   char* mem = sbrk(n * 4096);
//   printf(1,"complete sbrk\n");

//   // This loop will trigger page faults
//   printf(1,"Writing to pages...\n");
//   int i;
//   for(i = 0; i < n; i++) {
//     // Write a character to the first byte of each page
//     // This will cause a page fault for each page the first time it is accessed
//     mem[i * 4096] = (char)i;
//   }
//   printf(1,"Writing complete.\n");

//   // call your syscall here
//   printPages();
//   exit();
// }








// #include "types.h"
// #include "stat.h"

// // memexhaust.c - Test true on-demand paging
// #include "user.h"

// #define HUGE_SIZE (100000 * 4096) // 100 pages (400KB) - more than physical RAM?

// int main()
// {
//     printf(1, "Testing memory exhaustion...\n");
    
//     // Try to allocate more memory than physically available
//     char *p = sbrk(HUGE_SIZE);
//     if(p == (char*)-1) {
//         printf(1, "sbrk failed - expected with eager allocation\n");
//         exit();
//     }
    
//     printf(1, "Allocated %d bytes at %p\n", HUGE_SIZE, p);
    
//     // Now try to access all pages - this should fail with eager allocation
//     // but work with on-demand paging (until physical memory runs out)
//     for (int i = 0; i < HUGE_SIZE; i += 4096) {
//         printf(1, "Accessing page %d...", i/4096);
//         p[i] = 'A' + (i/4096 % 26);
//         printf(1, " OK: %c\n", p[i]);
        
//         if(i >= 20 * 4096) {
//             printf(1, "Stopping after 20 pages to avoid complete hang\n");
//             break;
//         }
//     }
    
//     printf(1, "Test completed\n");
//     exit();
// }


// int
// main(int argc, char *argv[])
// {
//   srand(1);
//   int n = (1<<16);
//   if(argc > 1)
//     n = atoi(argv[1]);

//   printf(1,"Allocating %d pages...\n", n);
//   sbrk(n * 4096);
//   printf(1,"complete sbrk\n");

//   // call your syscall here
//   printPages();  
//   exit();
// }


// // #include "types.h"
// #include "user.h"

// #define PGSIZE 4096

// int
// main(int argc, char *argv[])
// {
//     // sbrk(0) returns the current top of the heap
//     void* current_break = sbrk(0);
//     printf(1, "1. Initial program break: 0x%x\n", current_break);

//     printf(1, "2. Allocating 10 pages with sbrk...\n");
//     // Allocate 10 pages worth of memory
//     void* new_break = sbrk(10 * PGSIZE);

//     if (new_break == (void*)-1) {
//         printf(2, "sbrk failed\n");
//         exit();
//     }
    
//     printf(1, "3. New program break: 0x%x. NO page faults should have occurred yet.\n", new_break);
//     printf(1, "   Press Enter to continue...\n");
    
//     // Use gets() to pause the program. It requires a buffer.
//     char buf[2];
//     gets(buf, sizeof(buf));

//     // Access the LAST page of the newly allocated region
//     printf(1, "4. Accessing the last page. A page fault SHOULD occur now.\n");
//     char* last_page_ptr = (char*)(new_break - PGSIZE);
//     last_page_ptr[0] = 'A';

//     // Access the FIRST page of the newly allocated region
//     printf(1, "5. Accessing the first page. Another page fault SHOULD occur now.\n");
//     char* first_page_ptr = (char*)current_break;
//     first_page_ptr[0] = 'B';
    
//     printf(1, "6. Test successful!\n");

//     exit();
// }

// In usr/lazytest.c
#include "types.h"
#include "user.h"

#define PGSIZE 4096

int main(void)
{
    printf(1, "--- Test starting ---\n");
    
    printf(1, "Calling sbrk to allocate 10 pages...\n");
    char* mem = sbrk(10 * PGSIZE);
    if(mem == (char*)-1) {
        printf(2, "sbrk failed\n");
        exit();
    }
    printf(1, "sbrk call complete. Press Enter to access memory...\n");
    
    char buf[2];
    gets(buf, sizeof(buf)); // Pauses the program

    printf(1, "Accessing the 5th page...\n");
    mem[5 * PGSIZE] = 'A'; // Access a page in the middle

    printf(1, "Accessing the 1st page...\n");
    mem[0] = 'B'; // Access the first page
    
    printf(1, "--- Test Complete ---\n");
    exit();
}