# Import the users from CSV
$Users = Import-Csv -Path "C:\Windows-SysAdmin-Project\users.csv"

foreach ($User in $Users) {
    # Check if user already exists based on SamAccountName
    $existingUser = Get-ADUser -Filter "SamAccountName -eq '$($User.SamAccountName)'" -ErrorAction SilentlyContinue

    if (-not $existingUser) {
        # Create the new user
        New-ADUser -Name $User.Name `
                   -SamAccountName $User.SamAccountName `
                   -AccountPassword (ConvertTo-SecureString $User.Password -AsPlainText -Force) `
                   -Path $User.OU `
                   -Enabled $true

        Write-Host "Created user $($User.Name)."
    }
    else {
        Write-Host "User $($User.Name) already exists."
    }
}

