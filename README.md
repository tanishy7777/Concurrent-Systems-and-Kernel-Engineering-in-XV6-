## XV6 Page Table Project README

---

To run the test.c program, run the following from the OS console:

```sh
$ test
```

---

`print_pt` section shows the Page Table Entries for the `test.c` program.

```
print_pt starting
First 10 Pages
0 PTE: 0x7ff803e VA: 0
...
Last 10 Pages
0 PTE: 0x800df800 VA: 2146439166
...
print_pt: OK
```

- PTE: The hexadecimal value of the page table entry.
- VA: The Virtual Address this entry corresponds to.

---

- `ugetpid_test: OK`: This confirms that we can get a process ID without a system call.
- `print_kpt: OK`: This confirms that the system call to print the kernel's own page table entries is working.

-----

### Page Table Entry Bits:

The 32-bit PTE value is a combination of the address and control flags.

Assuming numbering from 31 (most significant) to 0 (least significant):

- **Bits 31 to 12: Physical Address**
  It points to the 4KB block of physical RAM where the data is stored.

- **Bits 9, 5, and 4: Access Permission (AP) Bits**
  These flags decide who is allowed to access the memory. For example, they set whether the memory is Readable/Writeable for the user, or if only the kernel is allowed to do so.

- **Bit 3 and 2: Cache (C) and Buffer (B) Bits**
  These are performance-related flags that tell the CPU whether this memory is safe to be cached or not.

- **Bit 1 and 0: Type Bits**  
  These bits tell the CPU what entry this is.
  - `00`: The entry is invalid, and trying to access it would cause a page fault.  
  - `01`: Represents Coarse Page Table meaning that it's a pointer to a 2nd level table.
  - `10`: It's a valid page of memory. Can be small (4KB) or large (1MB).  
  
