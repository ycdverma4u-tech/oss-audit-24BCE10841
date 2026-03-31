#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Yasha Verma

echo "============================================="
echo "     The Open Source Manifesto Generator"
echo "============================================="
echo "Answer three questions to generate your manifesto."
echo ""

# Taking input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

# Writing to file
echo "My Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "---------------------------------------------" >> $OUTPUT
echo "I believe that software should empower us. Every day, I rely on tools like $TOOL to create and learn." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "If I could contribute something to the world, I would build $BUILD and share it openly." >> $OUTPUT
echo "I believe knowledge should be accessible to everyone." >> $OUTPUT

echo "Manifesto successfully saved to $OUTPUT"
echo "---------------------------------------------"
echo "Here is what it says:"
echo "---------------------------------------------"

# Display file
cat $OUTPUT

echo "============================================="