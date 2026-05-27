# OS in 30 Days

A personal challenge to build a small operating system from scratch in 30 days while learning low-level computer architecture, x86 systems programming, and kernel development.

## Goal

The goal of this project is NOT to create a production-ready operating system.

This project exists to:
- understand how computers boot
- learn low-level memory and CPU concepts
- write a small freestanding kernel
- interact directly with hardware
- learn systems programming from the ground up

# Features

## Terminal
- [x] VGA text output
- [x] Newline support
- [x] Text wrapping
- [ ] Screen scrolling
- [ ] Backspace support
- [ ] Colored terminal API

## Interrupts
- [ ] IDT setup
- [ ] CPU exception handlers
- [ ] Divide-by-zero handler
- [ ] General Protection Fault handler

## Hardware
- [ ] Keyboard input
- [ ] PIT timer
- [ ] Speaker support

## Memory
- [ ] Paging
- [ ] Heap allocator
- [ ] Physical memory manager

## Kernel
- [ ] Shell
- [ ] Multitasking
- [ ] User mode
- [ ] Filesystem

# Build Requirements

## Required Tools

- GCC cross compiler (`i686-elf-gcc`)
- Binutils (`i686-elf-as`, `i686-elf-ld`)
- GRUB tools
- xorriso
- QEMU

---

# Building

```bash
make
```

---

# Running

```bash
make run
```

Or manually:

```bash
qemu-system-i386 -cdrom myos.iso
```

---

# Learning Resources

## Main References

- OSDev Wiki
- The Little Book About OS Development
- Intel Software Developer Manual

