#!/bin/bash

# Directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Software config directory (modify as needed)
CONFIG_DIR="/etc/httpd"

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory and collect details
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')  # Permissions, owner, group
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)         # Directory size
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Configuration Directory Check"
echo "------------------------------"

# Check if the chosen software's config directory exists
if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "$CONFIG_DIR exists => Permissions: $PERMS"
else
    echo "$CONFIG_DIR does not exist"
fi