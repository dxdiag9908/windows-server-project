Windows SysAdmin Project
Overview
This project demonstrates core Windows Server administration skills, focusing on Active Directory management and PowerShell automation. It simulates real-world sysadmin workflows for user and group management, auditing, and task automation — essential for IT professionals, students, and job seekers preparing for certifications or interviews.

Project Structure
1. Active Directory Setup & Management
Install VMware Tools inside the VM for better performance.

Enable Remote Desktop for easy access.

Install and configure Active Directory Domain Services (AD DS).

Create Organizational Units (OUs), users, groups, and Group Policy Objects (GPOs).

Join client machines to the domain (can simulate with additional Windows VMs).

2. PowerShell Administration
Automate common sysadmin tasks using PowerShell scripts, including:

User and group creation.

Automate group membership changes.

Audit user logins and password aging.

Export reports in CSV format.

Folder Structure:
User-Group-Creation/ — Scripts for creating users, groups, and managing memberships

Auditing-Reports/ — Scripts for auditing logins, password aging, and generating reports

Utilities/ — Reusable helper scripts and functions

Key Scripts:
Script	Purpose
Create-Users.ps1	Automates creation of Active Directory users
Create-Groups.ps1	Automates creation of AD groups
Modify-GroupMembership.ps1	Adds/removes users from groups
Audit-UserLogins.ps1	Generates CSV report on users' last login times
Audit-PasswordAging.ps1	Generates CSV report on password aging

3. CSV-Driven AD User Creation (New Addition)
This project now includes a PowerShell script to automate bulk creation of Active Directory users using a CSV file as input.

Create-ADUsers.ps1 — Reads user details from a CSV file and creates users in AD OUs if they do not already exist.

Users.csv — Sample CSV containing user attributes such as Name, SamAccountName, Password, and OU distinguished name.

How it Works:
The script imports user data from the CSV.

Checks if each user exists using Get-ADUser.

Creates new users with specified passwords and enables the accounts if they don’t exist.

Provides console output showing the creation status of each user.

Sample CSV Format:
csv
Copy
Edit
Name,SamAccountName,Password,OU
Alice Johnson,ajohnson,Password123!,"OU=Staff,DC=corp,DC=local"
Bob Smith,bsmith,Welcome456!,"OU=Staff,DC=corp,DC=local"
Charlie Brown,cbrown,Secure789!,"OU=Staff,DC=corp,DC=local"
David Lee,dlee,Hello321!,"OU=Staff,DC=corp,DC=local"
Ella White,ewhite,MyPass987!,"OU=Staff,DC=corp,DC=local"
Usage Notes:
Run PowerShell with an account that has permission to create AD users.

Modify the CSV with your user details and OU paths.

Execute the script:

powershell
Copy
Edit
.\Create-ADUsers.ps1
Review console messages for success or existence notifications.

4. Task Automation (Upcoming)
Scheduled task automation using PowerShell.

Service monitoring and automatic restarts.

Automated Windows Updates.

Log rotation and cleanup.

5. Optional Add-ons (Time Permitting)
File server role setup with permission management.

Basic DNS and DHCP configuration.

Remote PowerShell access setup.

Event log parsing and alerting.

6. GitHub Integration
All scripts are pushed to this public repository.

Organized folder structure for easy navigation:

AD-Setup/

Automation-Scripts/

Reports/

Optional-Addons/

Clear, comprehensive README file outlining project goals, usage, and relevance.

Real-World Relevance
Automating Active Directory management and auditing tasks improves operational efficiency, reduces human errors, and provides quick visibility into the health and status of your environment — all vital skills for daily Windows sysadmin operations.
