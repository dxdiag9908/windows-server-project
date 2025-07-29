
# Windows Server Lab – Active Directory & PowerShell Automation

This project simulates a real-world Windows Server environment with a focus on Active Directory, scripting, and automation using PowerShell. The goal is to build and manage a domain controller from scratch, automate admin tasks, and share everything via GitHub.

---

## 📌 Project Structure

### 1. Active Directory Setup & Management
- Install VMware Tools inside the VM for better performance.
- Enable Remote Desktop for easier access later.
- Install and configure AD DS.
- Create OUs, users, groups, and GPOs.
- Join client machines to the domain (can simulate with another Windows VM).

### 2. PowerShell Administration
- Script user and group creation.
- Automate group membership changes.
- Audit user logins and password aging.
- Export reports (CSV).
- # Section 2: PowerShell Administration

This section contains PowerShell scripts designed to automate common Windows sysadmin tasks, such as user and group management, auditing, and report generation.

## Folder Structure

- `User-Group-Creation/` — Scripts for creating users, groups, and managing memberships.
- `Auditing-Reports/` — Scripts to audit user logins, password aging, and export reports.
- `Utilities/` — Helper scripts or functions reused across multiple scripts.

## Scripts Overview

### User-Group-Creation

- `Create-Users.ps1` — Automates creation of AD users.
- `Create-Groups.ps1` — Automates creation of AD groups.
- `Modify-GroupMembership.ps1` — Adds/removes users to/from groups.

### Auditing-Reports

- `Audit-UserLogins.ps1` — Generates CSV report on user last login times.
- `Audit-PasswordAging.ps1` — Generates CSV report on password aging.

## How to Use

1. Run the scripts with appropriate permissions (run as Domain Admin or delegated account with necessary rights).
2. Modify the script parameters (user details, group names, output file paths) as needed.
3. Review generated CSV reports in the `Reports/` folder.

## Real-world relevance

Automating these tasks improves efficiency, reduces errors, and provides quick visibility into AD user and group status — essential for daily sysadmin operations.

### 3. Task Automation
- Scheduled tasks with PowerShell.
- Services monitoring/restarts.
- Windows Updates via script.
- Log rotation and cleanup scripts.

### 4. Optional Add-ons (Time Permitting)
- File server role with permission sets.
- DNS and DHCP basic configuration.
- Remote PowerShell access setup.
- Event log parsing and alerting.

### 5. GitHub Integration
- All scripts pushed to a public GitHub repository.
- Clear and well-structured README file (goals, usage, relevance).
- Proper folder structure:
  ```
  AD-Setup/
  Automation-Scripts/
  Reports/
  Optional-Addons/
  ```

---

## 💡 Real-World Relevance

This lab helps demonstrate real sysadmin workflows for Windows Server environments and is ideal for students, jobseekers, or IT professionals preparing for interviews or certifications.

---

## ✅ Status

🟢 In progress  
📅 Last updated: July 2025

