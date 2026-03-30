#!/bin/bash

# Package name to inspect (change as needed)
PACKAGE="httpd"

# Check if the package is installed (RPM-based systems)
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    
    # Show key package details
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

# Print a short philosophy note based on package name
case "$PACKAGE" in
    httpd)   echo "Apache: the web server that built the open internet" ;;
    mysql)   echo "MySQL: open source at the heart of millions of apps" ;;
    vlc)     echo "VLC: freedom to play any media without restrictions" ;;
    firefox) echo "Firefox: privacy-focused browsing powered by open source" ;;
    linux)   echo "Linux: collaborative power driving modern computing" ;;
    *)       echo "No philosophy note available for this package." ;;
esac