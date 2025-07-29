# Install AD DS role
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Import AD deployment module
Import-Module ADDSDeployment

# Promote to domain controller
Install-ADDSForest -DomainName "yourdomain.local" -SafeModeAdministratorPassword (ConvertTo-SecureString "YourPassword" -AsPlainText -Force)
