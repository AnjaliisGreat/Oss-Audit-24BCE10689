#!/bin/bash
# OSS Capstone Project
# Script 3: File System Architecture & Permission Auditor
# Author: Anjali Rajput | Registration: 24BCE10689

echo "--- Linux Storage & Security Audit ---"
echo "======================================"

# Array of target system directories for analysis
target_paths=("/etc" "/var/log" "/usr/bin" "/home" "/tmp" "/opt")

# Table Header Formatting
printf "%-18s | %-10s | %-12s | %s\n" "Path" "Capacity" "Owner" "Attributes"
echo "----------------------------------------------------------------------"

for folder in "${target_paths[@]}"; do
    if [[ -d "$folder" ]]; then
        # Calculating directory footprint (suppressing permission errors)
        disk_usage=$(du -sh "$folder" 2>/dev/null | cut -f1)
        
        # Extracting ownership and symbolic permission strings
        access_meta=$(ls -ld "$folder" 2>/dev/null)
        node_perms=$(echo "$access_meta" | awk '{print $1}')
        node_owner=$(echo "$access_meta" | awk '{print $3}')

        # Standardizing output for the audit table
        printf "%-18s | %-10s | %-12s | %s\n" "$folder" "${disk_usage:-"Access Denied"}" "$node_owner" "$node_perms"
    else
        # Flagging missing or inaccessible mount points
        printf "%-18s | %-10s | %-12s | %s\n" "$folder" "MISSING" "N/A" "N/A"
    fi
done

echo "----------------------------------------------------------------------"
echo "Audit phase finalized."
