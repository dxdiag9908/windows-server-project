# 🖥️ Windows SysAdmin Project

---

## 📋 Project Overview

As a Linux engineer expanding into Windows environments, this project focuses on:

- Hands-on Windows Server administration  
- Active Directory (AD) management  
- PowerShell automation  

### Key sysadmin workflows:

- User & group management  
- Auditing & reporting  
- Task automation  
- Network configuration  

This project is my hands-on path to confidently expand my skills from Linux into Windows sysadmin, helping me tackle real-world challenges and prepare for future roles requiring expertise across both environments.

---

## 🛠️ Tools & Software Used

- Windows Server 2022 (VMware VM)  
- PowerShell 7.2+  
- Active Directory Domain Services (AD DS)  
- VMware Workstation 16  
- Windows 10 clients (VMs)  

---

## 🗂️ Project Structure

### 1. Active Directory Setup & Management
- Install VMware Tools inside VM (performance boost)  
- Enable Remote Desktop  
- Install and configure Active Directory Domain Services (AD DS)  
- Create Organizational Units (OUs), users, groups, and Group Policy Objects (GPOs)  
- Join client machines to domain (simulated with Windows VMs)  

### 2. PowerShell Administration
Automate common sysadmin tasks such as:
- User and group creation  
- Group membership automation  
- User login and password aging audits  
- Exporting reports to CSV  

### 3. Service Monitor Script (🆕 New!)
- Monitors essential Windows services  
- Automatically restarts stopped services  
- Logs activity to `C:\Scripts\ServiceMonitor.log`  
- Runs automatically via Task Scheduler every 15 minutes  

---

## 📁 Folder Structure

| 📂 Folder                  | 🛠️ Purpose                                    |
|---------------------------|----------------------------------------------|
| User-Group-Creation/      | Scripts for creating users, groups, memberships |
| Auditing-Reports/         | Scripts for login audits & password aging reports |
| Utilities/                | Reusable helper scripts and functions        |
| Monitoring/               | Service Monitor script and Task Scheduler setup |
| Testing/                  | Validation and test output files for key components |

---

## 📝 Key Scripts

| Script Name               | Purpose                                      |
|---------------------------|----------------------------------------------|
| Create-Users.ps1          | Automates AD user creation                    |
| Create-Groups.ps1         | Automates AD group creation                   |
| Modify-GroupMembership.ps1| Adds/removes users from groups                |
| Audit-UserLogins.ps1      | Generates CSV report on last login times     |
| Audit-PasswordAging.ps1   | Generates CSV report on password aging       |
| ServiceMonitor.ps1        | Monitors & restarts critical services; logs results |

---

## 📊 CSV-Driven AD User Creation

Bulk-create AD users using a CSV file:

- **Create-ADUsers.ps1**: Reads CSV and creates users if they don’t exist.  
- **Users.csv**: Sample input with Name, SamAccountName, Password, and OU DN.

### How It Works

- Imports CSV user data  
- Checks user existence via `Get-ADUser`  
- Creates and enables new users  
- Displays status in console  

### Sample CSV Format

| Name           | SamAccountName | Password     | OU                       |
|----------------|----------------|--------------|--------------------------|
| Alice Johnson  | ajohnson       | Password123! | OU=Staff,DC=corp,DC=local|
| Bob Smith      | bsmith         | Welcome456!  | OU=Staff,DC=corp,DC=local|
| Charlie Brown  | cbrown         | Secure789!   | OU=Staff,DC=corp,DC=local|
| David Lee      | dlee           | Hello321!    | OU=Staff,DC=corp,DC=local|
| Ella White     | ewhite         | MyPass987!   | OU=Staff,DC=corp,DC=local|

---

## 🔧 Service Monitor Script Details

### Monitored Services

| Service Name | Description      |
|--------------|------------------|
| wuauserv     | Windows Update   |
| dhcp         | DHCP Client      |
| dnscache     | DNS Client       |
| Schedule     | Task Scheduler   |

### Functionality

- Checks if each service is running  
- If stopped, attempts to restart the service  
- Logs all actions in `C:\Scripts\ServiceMonitor.log`  

### Task Scheduler Setup

- **Action:**  
  `powershell.exe -ExecutionPolicy Bypass -File "C:\Scripts\ServiceMonitor.ps1"`  
- **Trigger:**  
  - Runs every 15 minutes  
  - Runs whether the user is logged on or not, with highest privileges  

---

## ✅ Validation / Testing Section

After completing the main project, I decided to validate each key component to ensure everything works correctly. The testing is broken down into these key areas with the resultant output included for each:

### 1. DHCP Server

- Checked if DHCP Server role is installed  
- Listed DHCP scopes configured on the server  

### 2. DNS Server

- Verified DNS forwarders configuration  

### 3. Group Policy Objects (GPO)

- Forced a group policy update  
- Retrieved applied policies with `gpresult`  

### 4. Service Monitor Script

- Ran the service monitoring script manually  
- Verified services status and logged results  

### Testing Outputs

All test output files are saved in the `/Testing` folder within this repository for detailed review.

---

If you have any questions or want to contribute, feel free to open an issue or submit a pull request!

---

*Last updated: 2025-08-04*
