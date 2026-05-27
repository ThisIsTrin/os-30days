// GNU Assembbler

//Multiboot header
.set ALIGN, 1<<0
.set MEMINFO, 1<<1
.set FLAGS, ALIGN | MEMINFO
.set MAGIC, 0x1BADB002
.set CHECKSUM, -(MAGIC+FLAGS)

.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM

// Create a Stack
.section .bss 
.align 16 
stack_bottom:
.skip 16384 
stack_top:

/*
stack bottom
| 16 KB reserved
stack top
*/

// Linker script
.section .text
.global _start
.type _start, @function
_start:
    
    mov $stack_top, %esp

    call kernel_main

    cli 
1:  hlt 
    jmp 1b 

.size _start, . - _start

