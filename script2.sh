#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Yasha Verma

PACKAGE="git"

echo "=============================================="
echo "Package Inspector: $PACKAGE"
echo "=============================================="

# Check if package is installed
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[STATUS] $PACKAGE is installed."
    echo "---------------------------------------------"
    dpkg -s "$PACKAGE" | grep -E 'Version|Description'
else
    echo "[STATUS] $PACKAGE is NOT installed."
fi

echo "---------------------------------------------"

# Case statement
case $PACKAGE in
    httpd|apache2)
        echo "Philosophy: Apache: the web server that built the open internet"
        ;;
    mysql|mysql-server)
        echo "Philosophy: MySQL: open source at the heart of millions of apps"
        ;;
    git)
        echo "Philosophy: Git: the decentralized version control system created by Linus Torvalds"
        ;;
    vlc)
        echo "Philosophy: VLC: the media player that plays almost any format"
        ;;
    *)
        echo "Philosophy: $PACKAGE: A valuable part of the open-source ecosystem."
        ;;
esac

echo "=============================================="