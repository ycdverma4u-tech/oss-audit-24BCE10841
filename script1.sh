#!/bin/bash
STUDENT_NAME="Yasha Verma"
SOFTWARE_CHOICE="Git"
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)
OS_LICENSE="Ubuntu Linux is mainly distributed under the GNU General Public License (GPL)."
echo "============================================="
echo "The Open Source Audit"
echo "============================================="
echo "Student Name    : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "---------------------------------------------"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo "---------------------------------------------"
echo "OS License Note : $OS_LICENSE"
echo "============================================="