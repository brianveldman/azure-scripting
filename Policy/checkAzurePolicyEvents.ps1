#Connect to Azure
Connect-AzAccount -DeviceCode

#Define subscriptionId
$subscriptionId = ""

#Analyze Azure Policy Events for desired subscription
Get-AzPolicyEvent -SubscriptionId $subscriptionId
