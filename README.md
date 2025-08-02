# 🖥️ Windows SysAdmin Project

---

## 📋 Project Overview

As a **Linux engineer** expanding into **Windows environments**, this project focuses on:

- Hands-on Windows Server administration.
- Active Directory (AD) management.
- PowerShell automation.
- Key sysadmin workflows:
  - User & group management.
  - Auditing & reporting.
  - Task automation.
  - Network configuration.

> This project is my hands-on path to confidently expand my skills from Linux into Windows sysadmin, helping me tackle real-world challenges and prepare for future roles that require expertise across both environments.

---

## 🗂️ Project Structure

### 1. Active Directory Setup & Management
- Install VMware Tools inside VM (performance boost).
- Enable Remote Desktop.
- Install and configure **Active Directory Domain Services (AD DS)**.
- Create OUs, users, groups, GPOs.
- Join client machines to domain (simulated with Windows VMs).

### 2. PowerShell Administration
Automate common sysadmin tasks like:
- User & group creation.
- Group membership automation.
- User login & password aging audits.
- CSV report exports.

### 3. Service Monitor Script (🆕 New!)
- Monitors essential Windows services.
- Auto-restarts stopped services.
- Logs activity to `C:\Scripts\ServiceMonitor.log`.
- Runs automatically via Task Scheduler.

---

## 📁 Folder Structure

| 📂 Folder               | 🛠️ Purpose                                      |
|------------------------|------------------------------------------------|
| `User-Group-Creation/` | Scripts for creating users, groups, memberships |
| `Auditing-Reports/`    | Scripts for login audits & password aging reports |
| `Utilities/`           | Reusable helper scripts and functions            |
| `Monitoring/`          | Service Monitor script and Task Scheduler setup  |

---

## 📝 Key Scripts

| Script Name              | Purpose                                               |
|--------------------------|-------------------------------------------------------|
| `Create-Users.ps1`       | Automates AD user creation                             |
| `Create-Groups.ps1`      | Automates AD group creation                            |
| `Modify-GroupMembership.ps1` | Adds/removes users from groups                        |
| `Audit-UserLogins.ps1`   | Generates CSV report on last login times              |
| `Audit-PasswordAging.ps1`| Generates CSV report on password aging                 |
| **`ServiceMonitor.ps1`** | Monitors & restarts critical services; logs results    |

---

## 📊 CSV-Driven AD User Creation

Bulk-create AD users using a CSV file:

- **`Create-ADUsers.ps1`**: Reads CSV and creates users if they don’t exist.
- **`Users.csv`**: Sample input with Name, SamAccountName, Password, and OU DN.

### How It Works:
- Imports CSV user data.
- Checks existence (`Get-ADUser`).
- Creates and enables new users.
- Displays status in console.

### Sample CSV Format:
```csv
Name,SamAccountName,Password,OU
Alice Johnson,ajohnson,Password123!,"OU=Staff,DC=corp,DC=local"
Bob Smith,bsmith,Welcome456!,"OU=Staff,DC=corp,DC=local"
Charlie Brown,cbrown,Secure789!,"OU=Staff,DC=corp,DC=local"
David Lee,dlee,Hello321!,"OU=Staff,DC=corp,DC=local"
Ella White,ewhite,MyPass987!,"OU=Staff,DC=corp,DC=local"
