<#
.SYNOPSIS
    Creates Active Directory users in a specified OU.
.DESCRIPTION
    This script creates new AD users with specified properties like name, username, password, and OU.
.NOTES
    Run this script with domain admin privileges.
#>

Import-Module ActiveDirectory

# Define users to create
$users = @(
    @{
        Name = "John Doe"
        GivenName = "John"
        Surname = "Doe"
        SamAccountName = "jdoe"
        UserPrincipalName = "jdoe@yourdomain.local"
        Password = "P@ssw0rd123"
        OU = "OU=CompanyUsers,DC=corp,DC=local"
    },
    @{
        Name = "Jane Smith"
        GivenName = "Jane"
        Surname = "Smith"
        SamAccountName = "jsmith"
        UserPrincipalName = "jsmith@yourdomain.local"
        Password = "P@ssw0rd123"
        OU = "OU=CompanyUsers,DC=corp,DC=local"
    }
)

foreach ($user in $users) {
    # Check if user already exists with correct -Filter syntax
    if (-not (Get-ADUser -Filter "SamAccountName -eq '$($user.SamAccountName)'" -ErrorAction SilentlyContinue)) {
        Write-Host "Creating user: $($user.Name)"

        New-ADUser `
            -Name $user.Name `
            -GivenName $user.GivenName `
            -Surname $user.Surname `
            -SamAccountName $user.SamAccountName `
            -UserPrincipalName $user.UserPrincipalName `
            -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -Force) `
            -Enabled $true `
            -Path $user.OU `
            -ChangePasswordAtLogon $false `
            -PasswordNeverExpires $true

        # Enable the account after creation
        Enable-ADAccount -Identity $user.SamAccountName

        Write-Host "User $($user.Name) created and enabled."
    }
    else {
        Write-Host "User $($user.SamAccountName) already exists. Skipping..."
    }
}
