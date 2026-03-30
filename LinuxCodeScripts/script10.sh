#!/bin/bash

# Prompt user for inputs
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Prepare output file with username and date
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Generate manifesto content and write to file
echo "Open Source Manifesto — $DATE" > "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "I believe in the power of open-source software. Using tools like $TOOL every day reminds me that technology should be accessible to everyone." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM — the ability to create, modify, and share without restrictions." >> "$OUTPUT"
echo "I aspire to build $BUILD and contribute it back to the community, so others can learn, improve, and innovate together." >> "$OUTPUT"

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"