# 🐧 Open Source Audit — Linux Kernel

## 📌 Student Details

* **Name:** Aditya Raj Sharma
* **Registration Number:** 24BCE10497
* **Course:** Open Source Software
* **Slot:** B22
* **Software Chosen:** LINUX

---

## 📖 Project Overview

This project is a structured audit of the **Linux Kernel**, focusing on its origin, licensing, ecosystem, and real-world impact. It also demonstrates practical Linux skills through five shell scripts.

The Linux kernel was created by Linus Torvalds in 1991 to provide a **free Unix-like operating system**, solving the limitations of expensive and restricted systems like Unix and Minix. Today, Linux powers servers, smartphones, cloud systems, and supercomputers. 

---

## 🎯 Objectives

* Understand open-source philosophy and licensing (GPL v2)
* Analyze Linux system structure and behavior
* Compare open-source vs proprietary software
* Demonstrate shell scripting skills using real Linux commands

---

## 🧰 Scripts Overview

### 1️⃣ System Identity Report (`system_identity.sh`)

* Displays system details like:

  * OS distribution
  * Kernel version
  * Logged-in user
  * Uptime and date
* Includes student information
* Uses variables, command substitution, and formatted output

👉 Purpose: Acts like a **system ID card** for Linux

---

### 2️⃣ FOSS Package Inspector (`package_inspector.sh`)

* Checks if a package is installed
* Displays version details
* Uses `if-else`, `grep`, `awk`, and `case` statement

👉 Purpose: Helps inspect installed open-source software

---

### 3️⃣ Disk and Permission Auditor (`disk_auditor.sh`)

* Scans important directories:

  * `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`
* Displays:

  * Permissions
  * Owner
  * Disk usage

👉 Purpose: Monitors **system storage and security permissions**

---

### 4️⃣ Log File Analyzer (`log_analyzer.sh`)

* Reads log files line by line
* Counts occurrences of keywords like `error`
* Displays last 5 matching entries

👉 Purpose: Useful for **debugging and system monitoring**

---

### 5️⃣ Open Source Manifesto Generator (`manifesto_generator.sh`)

* Takes user input (interactive)
* Generates a personalized open-source statement
* Saves output to a `.txt` file

👉 Purpose: Demonstrates **user interaction + file handling**

---

## ⚙️ How to Run the Scripts

### Step 1: Clone Repository

```bash
git clone https://github.com/your-username/oss-audit-24BCE10497.git
cd oss-audit-24BCE10497
```

### Step 2: Give Permission

```bash
chmod +x *.sh
```

### Step 3: Run Scripts

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

## 🔍 Key Learnings

* Linux is not just an OS but a **foundation of modern computing**
* GPL ensures freedom while preventing misuse
* Open source encourages collaboration and transparency
* Shell scripting is powerful for automation and system analysis

---

## ⚖️ Open Source vs Proprietary (Summary)

| Feature     | Linux     | Windows Server |
| ----------- | --------- | -------------- |
| Cost        | Free      | Expensive      |
| Source Code | Open      | Closed         |
| Flexibility | High      | Limited        |
| Control     | Community | Corporate      |

👉 Conclusion: Linux is ideal for performance, cost efficiency, and customization. 

---

## 📂 Repository Structure

```
oss-audit-24BCE10497/
│── system_identity.sh
│── package_inspector.sh
│── disk_auditor.sh
│── log_analyzer.sh
│── manifesto_generator.sh
│── README.md
│── report.pdf
```

---

## 🚀 Final Note

This project demonstrates how open-source software like Linux is built collaboratively and powers the modern digital world. It also highlights how command-line tools and scripting form the backbone of Linux system management.

---
