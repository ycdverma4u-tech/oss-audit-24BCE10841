#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Yasha Verma

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================="
echo "        Directory Audit Report"
echo "============================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory: $DIR"
        echo " => Permissions & Ownership : $PERMS"
        echo " => Size                    : $SIZE"
        echo "---------------------------------------------"
    else
        echo "[WARNING] $DIR does not exist on this system."
        echo "---------------------------------------------"
    fi
done

# Git footprint check
GIT_DIR="/usr/lib/git-core"

echo "=== Software Footprint Check: Git ==="

if [ -d "$GIT_DIR" ]; then
    GIT_PERMS=$(ls -ld "$GIT_DIR" | awk '{print $1, $3, $4}')
    echo "Git core directory ($GIT_DIR) exists."
    echo " => Permissions & Ownership : $GIT_PERMS"
else
    echo "Git core directory ($GIT_DIR) not found."
fi

echo "============================================="
