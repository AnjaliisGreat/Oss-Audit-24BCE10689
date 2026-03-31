# Git Technical Audit & Linux Automation Suite

**Author:** Anjali Rajput  
**Registration Number:** 24BCE10689  
**Course:** Open Source Software (NGMC)  
**Project:** OSS Capstone — Comprehensive Audit

---

## Project Context
This repository contains a technical deep-dive into **Git**, the industry-standard distributed version control system (DVCS). Originally developed by Linus Torvalds in 2005, Git revolutionized collaborative development. 

This audit evaluates:
* **Architectural Logic:** The design principles of Git's data structures.
* **Licensing:** Implications of the **GPL v2** on open-source ecosystems.
* **Linux Integration:** How Git functions as a core utility within Linux environments.
* **Industry Comparison:** Evaluating Git against legacy proprietary versioning tools.

The project also includes a suite of **five Bash automation scripts** designed to demonstrate advanced shell scripting proficiency and system administration capabilities.

---

## Repository Structure

| Resource | Functional Description |
| :--- | :--- |
| `script1.sh` | **System Diagnostics:** Generates a high-level summary of the host environment. |
| `script2.sh` | **Package Verification:** Audits the local installation status of FOSS software. |
| `script3.sh` | **Resource & Permission Audit:** Maps directory storage and access levels. |
| `script4.sh` | **Log Stream Parser:** Filters and quantifies specific event triggers within logs. |
| `script5.sh` | **Philosophy Generator:** Interactive tool to document open-source contributions. |
| `README.md` | Project documentation and execution guide. |

*Note: The comprehensive audit report (PDF) is submitted via the VITyarthi portal.*

---

## Execution Guide

### 1. Initialize Permissions
Before executing the utilities, ensure the scripts have the necessary permissions:
```bash
chmod +x script*.sh
2. Script Details
Utility 1: Environment Summary
Function: Extracts kernel details, active user session, and uptime metrics.

Key Logic: Command substitution, OS identification, and formatted output.

Command: bash script1.sh

Utility 2: Dependency Inspector
Function: Validates if Git or other specified packages are present.

Key Logic: case branching, command-line argument processing, and installation paths.

Command: bash script2.sh [package_name] (Defaults to Git)

Utility 3: Storage & Security Auditor
Function: Scans critical system paths (e.g., /etc, /var/log) to report disk consumption and ownership.

Key Logic: for loop iteration, du integration, and printf alignment.

Command: bash script3.sh

Utility 4: Streamlined Log Analysis
Function: Parses log files for specific patterns (e.g., "ERROR" or "FAIL").

Key Logic: while read buffers, string matching, and incremental counters.

Command: bash script4.sh [file_path] [search_term]

Utility 5: OSS Manifesto Builder
Function: An interactive interface to capture and export a personalized Open Source philosophy.

Key Logic: User read prompts, dynamic file creation, and timestamping.

Command: bash script5.sh

Technical Environment
Operating System: Any modern Linux distribution (Ubuntu, Debian, Fedora, etc.)

Shell: Bash 4.0+

Prerequisites: Root/Sudo access may be required for log parsing (Script 4).

About the Audit Subject: Git
Git was born out of necessity in 2005 when the Linux kernel team lost access to BitKeeper. In a matter of weeks, Linus Torvalds engineered a system that prioritized speed, data integrity, and support for distributed, non-linear workflows. Licensed under the GNU General Public License v2, Git remains the backbone of modern software engineering.
