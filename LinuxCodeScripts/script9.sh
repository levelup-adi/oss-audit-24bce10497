#!/bin/bash

# Input arguments: log file and optional keyword
LOGFILE="$1"
KEYWORD="${2:-error}"   # Default keyword is 'error'
COUNT=0

# Validate file existence
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry-style loop if file is empty (simulating do-while)
while true; do
    if [ ! -s "$LOGFILE" ]; then
        echo "File is empty. Waiting for data..."
        sleep 2
    else
        break
    fi
done

# Count keyword occurrences (case-insensitive)
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
echo "----------------------"

# Show last 5 matching lines
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5