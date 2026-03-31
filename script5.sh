#!/bin/bash
# OSS Capstone Project
# Script 5: Open Source Manifesto & Philosophy Generator
# Author: Anjali Rajput | Registration: 24BCE10689

echo "===== Constructing Your Personal Open Source Manifesto ====="
echo

# Collecting interactive user insights
read -p "1. Define what Open Source represents in your workflow: " OS_INPUT
read -p "2. In the context of software, what does 'Freedom' mean to you? " FREEDOM_VAL
read -p "3. Outline a project you intend to build for the community: " PROJECT_GOAL

# Setting metadata for the output file
STAMP=$(date +'%d %B %Y')
TARGET_DOC="manifesto_anjali_$(whoami).txt"

# Writing the personalized philosophy to a text file
{
    echo "====================================================="
    echo "           THE OPEN SOURCE MANIFESTO                "
    echo "====================================================="
    echo "Lead Developer: Anjali Rajput (24BCE10689)"
    echo "Generated on: $STAMP"
    echo "-----------------------------------------------------"
    echo "Beyond proprietary limits, I choose to develop the open"
    echo "systems that sustain our modern digital infrastructure."
    echo ""
    echo "For me, Open Source utility like $OS_INPUT acts as a"
    echo "catalyst for innovation, turning abstract concepts into"
    echo "functional reality."
    echo ""
    echo "Software freedom is fundamentally defined by: $FREEDOM_VAL."
    echo ""
    echo "My commitment to the community involves developing"
    echo "$PROJECT_GOAL to foster growth and collaboration."
    echo "====================================================="
} > "$TARGET_DOC"

echo
echo "Successfully exported your philosophy to: $TARGET_DOC"
echo "-----------------------------------------------------"

# Displaying the final result in the terminal
cat "$TARGET_DOC"
