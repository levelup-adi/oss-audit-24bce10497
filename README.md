# Open Source Audit — Linux Kernel

## 📌 Student Details

* **Name:** Aditya Raj Sharma
* **Registration Number:** 24BCE10497
* **Course:** Open Source Software
* **Slot:** B22
* **Softeare Chosen:** LINUX

---

## Project Overview

This project is a structured audit of the **Linux Kernel**, focusing on its origin, licensing, ecosystem, and real-world impact. It also demonstrates practical Linux skills through five shell scripts.

The Linux kernel was created to solve the lack of a free and modifiable Unix-like operating system. Today, it powers servers, Android devices, cloud systems, and supercomputers. 

---

## Objectives

* Understand open-source philosophy and GPL licensing
* Analyze Linux system structure and working
* Compare open-source vs proprietary systems
* Implement shell scripting concepts in real scenarios

---


### 1️⃣ System Identity Report (`system_identity.sh`)

This script works like a **system ID card**.

It:

* Displays Linux distribution and kernel version
* Shows current user, uptime, and system date
* Includes student name and registration number
* Uses variables and command substitution (`$( )`)

Key Concepts Used:

* Variables
* `uname`, `whoami`, `uptime`, `date`
* Output formatting using `echo`

---

### 2️⃣ FOSS Package Inspector (`package_inspector.sh`)

This script checks whether a package is installed and retrieves its details.

It:

* Uses `dpkg -l` to verify installation
* Extracts version information using `grep` and `awk`
* Uses a `case` statement to describe the package

 Key Concepts Used:

* `if-else` conditions
* Pipes (`|`)
* `grep`, `awk`
* `case` statement

---

### 3️⃣ Disk and Permission Auditor (`disk_auditor.sh`)

This script audits important Linux directories.

It:

* Loops through directories like `/etc`, `/var/log`, `/home`
* Displays:

  * Directory permissions
  * Owner/group
  * Disk usage
* Checks configuration directory existence

Key Concepts Used:

* `for` loop
* `ls -ld`, `du -sh`
* `awk`, `cut`
* Conditional statements

---

### 4️⃣ Log File Analyzer (`log_analyzer.sh`)

This script analyzes log files for specific keywords.

It:

* Accepts log file path and keyword as input
* Counts occurrences of the keyword
* Displays last 5 matching lines
* Validates file existence before processing

Key Concepts Used:

* `while read` loop
* Command-line arguments (`$1`, `$2`)
* Counters
* `grep`, `tail`

---

### 5️⃣ Open Source Manifesto Generator (`manifesto_generator.sh`)

This is an interactive script that generates a personalized statement.

It:

* Asks user three questions
* Stores responses in variables
* Generates a formatted paragraph
* Saves output to a `.txt` file
* Displays the result using `cat`

 Key Concepts Used:

* `read` for user input
* File redirection (`>`, `>>`)
* String handling
* `date` command

---

## ⚙️ How to Run the Scripts

### Step 1: Give Permission

```bash
chmod +x *.sh
```

### Step 2: Execute Scripts

```bash
./system_identity.sh
./package_inspector.sh
./disk_auditor.sh
./log_analyzer.sh /var/log/syslog error
./manifesto_generator.sh
```

---

## 🖥️ Requirements

* Ubuntu / Linux system
* Bash shell
* Basic utilities: `grep`, `awk`, `du`, `ls`, `dpkg`

---

## Key Learnings

* Linux is a community-driven operating system
* GPL license ensures freedom and transparency
* Open-source promotes collaboration and innovation
* Shell scripting enables automation and system analysis

---

## Open Source vs Proprietary (Summary)

| Feature     | Linux     | Windows Server |
| ----------- | --------- | -------------- |
| Cost        | Free      | Paid           |
| Source Code | Open      | Closed         |
| Flexibility | High      | Limited        |
| Control     | Community | Corporate      |

 Final Verdict: Linux provides better flexibility, cost efficiency, and transparency, making it ideal for modern computing environments. 

---

##  Final Note

This project highlights how open-source software like Linux is built collaboratively and used globally. It also demonstrates how shell scripting plays a crucial role in managing and understanding Linux systems.

---
