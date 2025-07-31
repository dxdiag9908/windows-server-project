Windows SysAdmin Project Overview
This project demonstrates core Windows Server administration skills, focusing on Active Directory management and PowerShell automation. It simulates real-world sysadmin workflows for user and group management, auditing, and task automation — essential for IT professionals, students, and job seekers preparing for certifications or interviews.

Project Structure
Active Directory Setup & Management
Install VMware Tools inside the VM for better performance.

Enable Remote Desktop for easy access.

Install and configure Active Directory Domain Services (AD DS).

Create Organizational Units (OUs), users, groups, and Group Policy Objects (GPOs).

Join client machines to the domain (can simulate with additional Windows VMs).

PowerShell Administration
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

Script Name	Purpose
Create-Users.ps1	Automates creation of Active Directory users
Create-Groups.ps1	Automates creation of AD groups
Modify-GroupMembership.ps1	Adds/removes users from groups
Audit-UserLogins.ps1	Generates CSV report on users' last login times
Audit-PasswordAging.ps1	Generates CSV report on password aging

CSV-Driven AD User Creation (New Addition)
Automates bulk creation of Active Directory users using a CSV file as input.

Create-ADUsers.ps1 — Reads user details from a CSV and creates users in AD OUs if they don’t exist.

Users.csv — Sample CSV with user attributes such as Name, SamAccountName, Password, and OU distinguished name.

How it Works:

Imports user data from the CSV.

Checks if each user exists using Get-ADUser.

Creates new users with specified passwords and enables accounts if they don’t exist.

Provides console output showing creation status.

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

Network Configuration Automation (New Work Added)
Today, PowerShell automation was expanded to include DNS and DHCP server setup and configuration. This includes:

DNS Server Setup via PowerShell
Verified DNS server installation and configuration.

Exported all DNS-related PowerShell commands used into a reusable script:
Network-Setup\dns-setup.ps1

DHCP Server Setup via PowerShell
Created and activated a DHCP IPv4 scope (10.0.2.0/24).

Set DHCP options including DNS servers and domain name for clients:

Configured DNS servers correctly to ensure valid IPs.

Set DHCP option for domain name (e.g., corp.local).

Added DHCP reservations to bind specific IP addresses to MAC addresses for device control.

Exported DHCP PowerShell commands into a reusable script:
Network-Setup\dhcp-setup.ps1

Task Automation (Upcoming)
Scheduled task automation using PowerShell.

Service monitoring and automatic restarts.

Automated Windows Updates.

Log rotation and cleanup.

Optional Add-ons (Time Permitting)
File server role setup with permission management.

Remote PowerShell access setup.

Event log parsing and alerting.

GitHub Integration
All scripts are pushed to this public repository with a clean folder structure for easy navigation:

AD-Setup/

Automation-Scripts/

Network-Setup/

Reports/

Optional-Addons/

This repository includes a clear, comprehensive README outlining project goals, usage instructions, and real-world relevance.

Real-World Relevance
Automating Active Directory, DNS, and DHCP configuration improves operational efficiency, reduces human errors, and provides quick visibility into the health and status of your environment — all vital skills for daily Windows sysadmin operations.
