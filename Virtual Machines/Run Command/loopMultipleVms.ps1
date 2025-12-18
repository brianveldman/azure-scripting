#Define resourceGroup where Virtual Machines live
$resourceGroup = ""

#Getting all the Virtual Machines in resource group
$virtualMachines = Get-AzVM -ResourceGroupName $resourceGroup -status | Where-Object {$_.PowerState -eq "VM running" -and $_.StorageProfile.OSDisk.OSType -eq "Windows"}

#Invoke Azure VM Run Command on each Virtual Machine
$virtualMachines | ForEach-Object {
    $out = Invoke-AzVMRunCommand `
        -ResourceGroupName $_.ResourceGroupName `
        -Name $_.Name `
        -CommandId RunPowerShellScript `
        -ScriptPath ./script.ps1

    $_.Name + " " + $out.Value[0].Message
} 
