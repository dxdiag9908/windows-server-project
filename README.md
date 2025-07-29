Windows SysAdmin Project
Overview
This project demonstrates core Windows Server administration skills focusing on Active Directory management and PowerShell automation. It simulates real-world sysadmin workflows for user and group management, auditing, and task automation — essential for IT professionals, students, and jobseekers preparing for certifications or interviews.

Project Structure
1. Active Directory Setup & Management
Install VMware Tools inside the VM for better performance.

Enable Remote Desktop for easy access.

Install and configure Active Directory Domain Services (AD DS).

Create Organizational Units (OUs), users, groups, and Group Policy Objects (GPOs).

Join client machines to the domain (can simulate with additional Windows VMs).

2. PowerShell Administration
Automate common sysadmin tasks using PowerShell scripts:

User and group creation.

Automate group membership changes.

Audit user logins and password aging.

Export reports in CSV format.

Folder Structure:

bash
Copy
Edit
User-Group-Creation/       # Scripts for creating users, groups, and managing memberships
Auditing-Reports/          # Scripts for auditing logins, password aging, and generating reports
Utilities/                 # Reusable helper scripts and functions
Key Scripts:

Script	Purpose
Create-Users.ps1	Automates creation of Active Directory users
Create-Groups.ps1	Automates creation of AD groups
Modify-GroupMembership.ps1	Adds/removes users from groups
Audit-UserLogins.ps1	Generates CSV report on users' last login times
Audit-PasswordAging.ps1	Generates CSV report on password aging

Usage:

Run scripts with appropriate permissions (Domain Admin or delegated account).

Modify script parameters such as user details, group names, and output file paths as needed.

Review generated CSV reports in the Reports/ folder.

3. Task Automation (Upcoming)
Scheduled task automation using PowerShell.

Service monitoring and automatic restarts.

Automated Windows Updates.

Log rotation and cleanup.

4. Optional Add-ons (Time Permitting)
File server role setup with permission management.

Basic DNS and DHCP configuration.

Remote PowerShell access setup.

Event log parsing and alerting.

5. GitHub Integration
All scripts are pushed to this public repository.

Organized folder structure for easy navigation:

python
Copy
Edit
AD-Setup/
Automation-Scripts/
Reports/
Optional-Addons/
Clear, comprehensive README file outlining project goals, usage, and relevance.

Real-World Relevance
Automating Active Directory management and auditing tasks improves operational efficiency, reduces human errors, and provides quick visibility into the health and status of your environment — all vital skills for daily Windows sysadmin operations.

