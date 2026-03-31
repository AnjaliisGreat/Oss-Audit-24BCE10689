#!/bin/bash
# OSS Capstone Project
# Script 1: Host Environment Diagnostics
# Author: Anjali Rajput | Registration: 24BCE10689
# Audit Target: Git (VCS)

# Define core identity variables
DEV_NAME="Anjali Rajput"
PROJECT_TYPE="Git Version Control Audit"

# Gathering system metrics using standard environment commands
OS_VERSION=$(awk -F= '/^PRETTY_NAME/{print $2}' /etc/os-release | sed 's/"//g')
KERNEL_RELEASE=$(uname -r)
ACTIVE_USER=$USER
USER_PATH=$HOME
SYSTEM_UPTIME=$(uptime -p)
TIMESTAMP=$(date '+%A, %d %B %Y, %H:%M:%S')

# Licensing attribution for the host kernel
OS_LICENSE_NOTICE="This environment operates on the Linux Kernel (Licensed under GNU GPL v2)."

# Generate the diagnostic report interface
echo "====================================================="
echo "       OPEN SOURCE SOFTWARE AUDIT - SYSTEM INFO      "
echo "====================================================="
echo " Lead Developer  : $DEV_NAME"
echo " Subject Tool    : $PROJECT_TYPE"
echo "-----------------------------------------------------"
echo " Distribution    : $OS_VERSION"
echo " Kernel Release  : $KERNEL_RELEASE"
echo " Session User    : $ACTIVE_USER"
echo " Root Directory  : $USER_PATH"
echo " System Uptime   : $SYSTEM_UPTIME"
echo " Audit Timestamp : $TIMESTAMP"
echo " License Scope   : $OS_LICENSE_NOTICE"
echo "====================================================="
