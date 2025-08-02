Windows SysAdmin Project

Project Overview

As a Linux engineer looking to broaden my skill set and prepare for future roles in Windows environments, I created this project to gain hands‑on experience with core Windows Server administration. This real‑world simulation focuses on Active Directory (AD) management, PowerShell automation, and now service monitoring & self‑healing, covering essential sysadmin workflows such as user and group management, auditing, task automation, network configuration, and automatic recovery of critical services.

This repository represents my journey to up‑skill and confidently bridge the gap between Linux and Windows systems administration, making me better equipped for diverse IT roles and certification paths.

Features

🗂️ Active Directory deployment & management (OUs, users, groups, GPOs)

⚡ PowerShell automation of routine tasks (user creation, audits, reporting)

📑 CSV‑driven bulk user provisioning

🩺 Service monitoring & self‑healing with Task Scheduler

📈 Comprehensive logging & reporting

Project Structure

1  Active Directory Setup & Management

Install VMware Tools inside the VM for better performance.

Enable Remote Desktop for easy access.

Install and configure Active Directory Domain Services (AD DS).

Create Organizational Units (OUs), users, groups, and Group Policy Objects (GPOs).

Join client machines to the domain (can be simulated with additional Windows VMs).

2  PowerShell Administration

Reusable PowerShell scripts automate common sysadmin tasks, including:

User and group creation / modification

Automating group membership changes

Auditing user logins and password aging

Exporting reports in CSV format

3  Service Monitoring & Automation (NEW)

The ServiceMonitor.ps1 script ensures that critical Windows services remain online.

Monitored Service

Display Name

wuauserv

Windows Update

dhcp

DHCP Client

dnscache

DNS Client

Schedule

Task Scheduler

Checks each service and restarts it if it is stopped.

Logs every run to C:\Scripts\ServiceMonitor.log.

Scheduled to run every 15 minutes via Windows Task Scheduler (see setup below).

Task Scheduler Setup (quick reference)

Action   : powershell.exe -ExecutionPolicy Bypass -File "C:\Scripts\ServiceMonitor.ps1"
Trigger  : Daily, Repeats every 15 minutes, for 1 day
Options  : Run whether user is logged on or not, Run with highest privileges

(Exported XML of the task is included in /Monitoring/ServiceMonitorTask.xml.)

Folder Structure

Folder

Purpose

User-Group-Creation/

Scripts for creating users, groups, memberships

Auditing-Reports/

Scripts for auditing logins, password aging, generating reports

Monitoring/

ServiceMonitor.ps1, ServiceMonitorTask.xml, and log output

Utilities/

Reusable helper scripts and functions

docs/

Project documentation & images

Key Scripts

Script

Purpose

Create-Users.ps1

Automates creation of Active Directory users

Create-Groups.ps1

Automates creation of AD groups

Modify-GroupMembership.ps1

Adds/removes users from groups

Audit-UserLogins.ps1

Generates CSV report on users' last‑login times

Audit-PasswordAging.ps1

Generates CSV report on password aging

ServiceMonitor.ps1

Monitors & restarts critical services; logs to ServiceMonitor.log; invoked by Task Scheduler

CSV‑Driven AD User Creation (Bulk Provisioning)

Files

Create-ADUsers.ps1 — Reads user details from a CSV and creates users in AD OUs if they don’t already exist.

Users.csv — Sample CSV with user attributes.

How it Works

Imports user data from Users.csv.

Checks if each user exists using Get-ADUser.

Creates new users with specified passwords and enables accounts if needed.

Provides console output showing creation status.

Sample CSV Format

Name,SamAccountName,Password,OU
Alice Johnson,ajohnson,Password123!,"OU=Staff,DC=corp,DC=local"
Bob Smith,bsmith,Welcome456!,"OU=Staff,DC=corp,DC=local"
Charlie Brown,cbrown,Secure789!,"OU=Staff,DC=corp,DC=local"
David Lee,dlee,Hello321!,"OU=Staff,DC=corp,DC=local"
Ella White,ewhite,MyPass987!,"OU=Staff,DC=corp,DC=local"

Getting Started

Clone the repository:

git clone https://github.com/dxdiag9908/windows-server-project.git

Import or run the scripts relevant to your environment.

(Optional) Import Task Scheduler job from Monitoring/ServiceMonitorTask.xml or create it manually as shown above.

Tail the log to verify service monitoring:

Get-Content -Path C:\Scripts\ServiceMonitor.log -Tail 20 -Wait

Contributing

Pull requests are welcome! Please open an issue first to discuss major changes.



