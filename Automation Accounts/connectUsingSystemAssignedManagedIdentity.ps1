#Connecting to Azure using System Assigned Managed Identity
Connect-AzAccount -Identity

#Getting Azure Resources
Get-AzResource | Format-Table
