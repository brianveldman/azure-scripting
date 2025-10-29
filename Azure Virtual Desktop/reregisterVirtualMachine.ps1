$newKey = ''

Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\RDInfraAgent" -Name "IsRegistered" -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\RDInfraAgent" -Name "RegistrationToken" -Value $newKey -Force

Restart-Service RDAgentBootLoader

Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\RDInfraAgent" -Name IsRegistered | FL IsRegistered
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\RDInfraAgent" -Name RegistrationToken | FL RegistrationToken
