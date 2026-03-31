# OSS Audit Project – Git

## Student Details

Name: Yasha Verma
Registration Number: 24BCE10841

## Chosen Software

Git (Open Source Version Control System)

## About the Project

This project focuses on understanding open-source software using Git as the main example. Instead of just studying theory, I explored how Git works in a Linux environment and learned about its origin, license, and role in the open-source ecosystem.

Along with the report, I also created five shell scripts to apply basic Linux and scripting concepts practically.

## Scripts Overview

### Script 1 – System Identity Report

This script shows basic system details like the Linux distribution, kernel version, current user, uptime, and date. It works like a simple welcome screen.

### Script 2 – FOSS Package Inspector

This script checks whether Git is installed on the system. It also displays its version and gives a short idea about its purpose.

### Script 3 – Disk and Permission Auditor

This script goes through important system directories and shows their permissions, ownership, and size. It also checks Git’s core directory.

### Script 4 – Log File Analyzer

This script reads a log file and counts how many times a specific keyword appears. It also shows the last few matching lines.

### Script 5 – Open Source Manifesto Generator

This is an interactive script that asks a few questions and generates a short open-source manifesto based on the answers.

## How to Run

Make all scripts executable:
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

Run scripts one by one:
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/dpkg.log install
./script5.sh

## Requirements

* Linux environment (Ubuntu, WSL, or Codespaces)
* Basic terminal knowledge
* Git installed

## Project Files

* script1.sh
* script2.sh
* script3.sh
* script4.sh
* script5.sh
* README.md

## Final Note

While working on this project, I understood how important open-source tools like Git are in real-world development. It also helped me get more comfortable with Linux commands and shell scripting.
