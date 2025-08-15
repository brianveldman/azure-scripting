$managementGroupId = "" 
$resourceProviderNamespace = "Microsoft.PolicyInsights"

$url = "https://management.azure.com/providers/Microsoft.Management/managementGroups/$managementGroupId/providers/$resourceProviderNamespace/register?api-version=2021-04-01"

$token = (Get-AzAccessToken -ResourceUrl "https://management.azure.com").Token
$headers = @{
    'Authorization' = "Bearer $token"
}

Invoke-WebRequest -Uri $url -Method POST -Headers $headers
