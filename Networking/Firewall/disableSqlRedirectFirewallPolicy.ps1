
#Set SQL AllowRedirect to false if true.
$firewallName = ""
$resourceGroupName = ""

$sqlSetting = New-AzFirewallPolicySqlSetting

$policy = Get-AzFirewallPolicy -Name $firewallName -ResourceGroupName $resourceGroupName
$policy.SqlSetting = $sqlSetting

Set-AzFirewallPolicy -InputObject $policy
