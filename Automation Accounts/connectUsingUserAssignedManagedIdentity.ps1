#Connecting to Azure using User Assigned Managed Identity
Connect-AzAccount -Identity -AccountId "<clientIdHere>"

#Getting Azure Resources
Get-AzResource | Format-Table
