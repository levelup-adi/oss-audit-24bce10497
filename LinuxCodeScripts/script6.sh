#!/bin/bash

# Basic user-defined details
STUDENT_NAME="Aditya Raj Sharma"
SOFTWARE_CHOICE="Linux"

# Collect system information
KERNEL=$(uname -r)                  # Kernel version
USER_NAME=$(whoami)                # Current logged-in user
UPTIME=$(uptime -p)                # System uptime (pretty format)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)  # Distribution name
DATE=$(date)                       # Current date and time

# Display formatted report
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Distro   : $DISTRO"
echo "Date     : $DATE"

# Open-source license note
echo "License  : Open-source software allows use, modification, and distribution."