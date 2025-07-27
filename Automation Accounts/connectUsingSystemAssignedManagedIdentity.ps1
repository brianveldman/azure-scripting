#Connecting to Azure using MI
Connect-AzAccount -Identity

#Getting Azure Resources
Get-AzResource | Format-Table
