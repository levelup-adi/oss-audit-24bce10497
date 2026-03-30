# Linux Capstone OSS Project

**Submitted by:** Aditya Raj Sharma  
**Registration No:**  24BCE10497
**Software Chosen:** LINUX


---

## Overview

This project explores the Linux operating system from its origins as an open-source solution to a gap in the software world, through its licensing philosophy, ethical implications, and practical shell scripting demonstrations.

---

## Contents

- [Background](#background)
- [License](#license)
- [Ethics of Open Source](#ethics-of-open-source)
- [System Structure](#system-structure)
- [Dependencies](#dependencies)
- [What Linux Has Enabled](#what-linux-has-enabled)
- [Linux vs Windows Server](#linux-vs-windows-server)
- [Shell Scripts](#shell-scripts)

---

## Background

Linux was created in 1991 by **Linus Torvalds**, then a 21-year-old student in Helsinki, to fill a gap left by Unix (powerful but proprietary) and Minix (educational but limited). Torvalds shared his kernel publicly and linked it with Richard Stallman's GNU tools, producing a fully functional, free, and open-source operating system.

Today, Linux powers web servers, Android smartphones, supercomputers, cloud platforms, and NASA's Mars rovers.

---

## License

Linux is distributed under the **GNU General Public License v2 (GPL v2)**, which uses a "copyleft" model. This guarantees four core freedoms:

| Freedom | Description |
|--------|-------------|
| Freedom 0 | Run the program for any purpose |
| Freedom 1 | Study how the program works (source code access required) |
| Freedom 2 | Redistribute copies freely |
| Freedom 3 | Distribute modified versions so the community benefits |

### GPL v2 vs MIT

| Feature | GPL v2 (Copyleft) | MIT (Permissive) |
|--------|-------------------|-----------------|
| Share source? | Yes — required when distributing | No — changes can stay private |
| Derivative licence | Must stay GPL | Any licence allowed |
| Commercial use | Allowed, source stays open | Allowed, no conditions |
| Who uses it | Linux, Git, MySQL | React, jQuery, VS Code |

---

## Ethics of Open Source

Open-source software (Apache, Linux, Git, Python) forms the backbone of the modern internet. Key ethical considerations include:

- **Should all software be open source?** Good code takes time and investment; not all projects can sustain open development.
- **Is it fair to monetise community code?** GPL licences allow it legally (e.g., Red Hat, Google, Meta). Ethically, contributing back — in code or funding — is encouraged.

---

## System Structure

### Installation

```bash
# Debian / Ubuntu
sudo apt update && sudo apt install linux-image-generic
uname -r

# RHEL / Fedora
sudo dnf install kernel
```

### Key Directories

| Directory | Purpose |
|-----------|---------|
| `/boot` | Kernel image (vmlinuz), initrd, GRUB config |
| `/lib/modules/$(uname -r)` | Loadable kernel modules for the running version |
| `/proc` | Virtual filesystem — live kernel and process info |
| `/sys` | Virtual filesystem — hardware and driver info |
| `/var/log/kern.log` | Kernel log messages (Debian-based systems) |

### Useful Commands

| Command | Purpose |
|---------|---------|
| `lsmod` | List loaded kernel modules |
| `modprobe` | Load a kernel module |
| `rmmod` | Remove a kernel module |
| `sysctl` | Change kernel settings dynamically |

---

## Dependencies

| Dependency | Purpose |
|-----------|---------|
| GCC / Clang | Compilers used to build the kernel from source |
| GNU Make | Build system that processes kernel Makefiles |
| GNU Binutils | Assembler and linker used during compilation |
| glibc | Standard C library — user-space programs use this to talk to the kernel |
| OpenSSL | Used for kernel module signing and secure boot |

---

## What Linux Has Enabled

| Project | Relationship to Linux |
|--------|----------------------|
| Android | Built on the Linux kernel — billions of devices worldwide |
| Git | Created by Linus Torvalds in 2005 for Linux kernel development |
| Docker | Uses Linux kernel namespaces and cgroups as its foundation |
| AWS / GCP / Azure | All major cloud platforms run on Linux under the hood |
| ChromeOS | Google's desktop OS built on the Linux kernel |

> The **LAMP stack** (Linux, Apache, MySQL, PHP) has been the backbone of web hosting for over two decades. The Linux kernel is maintained by Linus Torvalds and his team via the Linux Kernel Mailing List, with new versions released every 9–10 weeks.

---

## Linux vs Windows Server

| Dimension | Linux (Open Source) | Windows Server (Proprietary) |
|----------|---------------------|------------------------------|
| Cost | Free — no licence fee | Expensive per-server licensing |
| Security auditing | Anyone can review the code | Black box — trust Microsoft's word |
| Support | Community + paid options (Red Hat) | Microsoft support, SLAs |
| Freedom to modify | Full — fork, patch, build on it | None — source is locked |
| Hardware support | Broad, sometimes needs manual setup | Excellent driver support out of box |
| Ease of use | Steeper learning curve | GUI-heavy, more accessible |

**Verdict:** For server deployment, cloud infrastructure, or anywhere performance and cost control matter, Linux is the clear choice. Zero licence cost, a massive community, and full customisation make it hard to beat.

---

## Shell Scripts

Five Bash scripts are included to demonstrate core shell scripting concepts.

### Script 1 — Hello World

Prints a simple `Hello, World!` message to the terminal. Verifies the shell environment is working and demonstrates `echo` and script execution.

### Script 2 — Adding Two Numbers

Reads two integers from the user and prints their sum. Demonstrates:
- `read -p` for user input
- Variable storage
- Arithmetic with `$(( ))`
- Input validation using regex

### Script 3 — Check if a File Exists

Accepts a filename as input and checks whether the file exists on the system. Demonstrates:
- `if-then-else` conditionals
- The `-f` flag for file existence testing

### Script 4 — Print Current Date and Time

Displays the current system date and time (synced with the global clock).

```bash
#!/bin/bash
echo "current date and time: $(date)"
```

### Script 5 — Simple Menu Script

A menu-driven program built with a `while true` loop and `case` statement. Options include:

1. Show Current Date and Time
2. Show Current Directory
3. List Files in Current Directory
4. Show Disk Usage
5. Exit

Demonstrates: loops, `case` statements, `pwd`, `ls -l`, and `df -h`.

---

## Running the Scripts

```bash
# Make a script executable
chmod +x scriptN.sh

# Run it
./scriptN.sh
```

---

*Linux Capstone OSS Project — VIT Bhopal*
