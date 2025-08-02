# Windows SysAdmin Project

## Project Overview
As a Linux engineer looking to broaden my skill set and prepare for future roles in Windows environments, I created this project to gain hands-on experience with core Windows Server administration. This real-world simulation focuses on Active Directory (AD) management and PowerShell automation, covering essential sysadmin workflows such as user and group management, auditing, task automation, and network configuration.

This project represents my journey to upskill and confidently bridge the gap between Linux and Windows systems administration, making me better equipped for diverse IT roles and certification paths

---

## Project Structure

### Active Directory Setup & Management
- Install VMware Tools inside the VM for better performance.
- Enable Remote Desktop for easy access.
- Install and configure Active Directory Domain Services (AD DS).
- Create Organizational Units (OUs), users, groups, and Group Policy Objects (GPOs).
- Join client machines to the domain (can simulate with additional Windows VMs).

### PowerShell Administration
Automate common sysadmin tasks using PowerShell scripts, including:
- User and group creation.
- Automating group membership changes.
- Auditing user logins and password aging.
- Exporting reports in CSV format.

**Folder Structure:**

| Folder                   | Purpose                                      |
|--------------------------|----------------------------------------------|
| `User-Group-Creation/`   | Scripts for creating users, groups, memberships |
| `Auditing-Reports/`      | Scripts for auditing logins, password aging, generating reports |
| `Utilities/`             | Reusable helper scripts and functions         |

---

## Key Scripts

| Script Name                | Purpose                                  |
|----------------------------|------------------------------------------|
| `Create-Users.ps1`          | Automates creation of Active Directory users |
| `Create-Groups.ps1`         | Automates creation of AD groups            |
| `Modify-GroupMembership.ps1`| Adds/removes users from groups             |
| `Audit-UserLogins.ps1`      | Generates CSV report on users' last login times |
| `Audit-PasswordAging.ps1`   | Generates CSV report on password aging     |

---

## CSV-Driven AD User Creation (New Addition)

Bulk-create AD users from a CSV input:

- **`Create-ADUsers.ps1`** — Reads user details from a CSV and creates users in AD OUs if they don’t already exist.
- **`Users.csv`** — Sample CSV with user attributes: Name, SamAccountName, Password, and OU distinguished name.

### How it Works:
- Imports user data from CSV.
- Checks if each user exists (`Get-ADUser`).
- Creates new users with specified passwords and enables accounts if they don’t exist.
- Provides console output showing creation status.

### Sample CSV Format:
```csv
Name,SamAccountName,Password,OU
Alice Johnson,ajohnson,Password123!,"OU=Staff,DC=corp,DC=local"
Bob Smith,bsmith,Welcome456!,"OU=Staff,DC=corp,DC=local"
Charlie Brown,cbrown,Secure789!,"OU=Staff,DC=corp,DC=local"
David Lee,dlee,Hello321!,"OU=Staff,DC=corp,DC=local"
Ella White,ewhite,MyPass987!,"OU=Staff,DC=corp,DC=local"
