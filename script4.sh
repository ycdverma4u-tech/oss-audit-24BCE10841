#!/bin/bash
# Script 4: Log File Analyzer
# Author: Yasha Verma

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "[WARNING] File $LOGFILE not found."
    exit 1
fi

echo "============================================="
echo "            Log File Analyzer"
echo "============================================="
echo "Analyzing '$LOGFILE' for keyword: '$KEYWORD'"
echo "---------------------------------------------"

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "---------------------------------------------"

# Show last 5 matching lines
if [ $COUNT -gt 0 ]; then
    echo "Last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -5
else
    echo "No occurrences found."
fi

echo "============================================="