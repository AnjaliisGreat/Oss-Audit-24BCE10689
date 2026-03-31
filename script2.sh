#!/bin/bash
# OSS Capstone Project
# Script 2: Open Source Dependency & Software Auditor
# Author: Anjali Rajput | Registration: 24BCE10689

# Primary software check
CORE_TOOL="git" 

# Locating the executable binary path
BIN_LOCATION=$(type -p "$CORE_TOOL")

if [[ -z "$BIN_LOCATION" ]]; then
    echo "Critial Error: $CORE_TOOL is not detected in the current environment."
    echo "Recommendation: Use 'sudo apt install git' or 'sudo dnf install git' to proceed."
else
    # Extracting specific version numbers
    VERSION_ID=$(git --version | cut -d' ' -f3)
    
    echo "--- Dependency Audit ---"
    echo "Status: $CORE_TOOL is operational"
    echo "Location: $BIN_LOCATION"
    echo "Current Version: $VERSION_ID"
    echo "------------------------"

    # Evaluate package context based on user input or default to Git
    TARGET_PKG=${1:-git}
    echo "Querying repository info for: $TARGET_PKG"
    
    case "$TARGET_PKG" in
        git)
            echo "Overview: A high-performance distributed version control system (DVCS) designed for speed and data integrity."
            ;;
        python3|python)
            echo "Overview: An interpreted, high-level programming language known for readability and vast open-source libraries."
            ;;
        apache2|httpd)
            echo "Overview: A robust, modular web server that serves as a cornerstone of the modern internet infrastructure."
            ;;
        vim|nano|neovim)
            echo "Overview: Command-line text editors essential for configuration management and remote server administration."
            ;;
        *)
            echo "Audit Notice: No local documentation found for '$TARGET_PKG'. Please verify the package name."
            ;;
    esac
fi
