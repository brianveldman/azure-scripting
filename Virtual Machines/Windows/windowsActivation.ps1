# Configure the system to use Azure Key Management Service (KMS)
# Allow outbound access to 20.118.99.224/23 and 40.83.235.53/32 on port 1688 (KMS)
# If using SASE or SD-WAN, enforce traffic routing to the above IP addresses using UDRs with next hop set to a Internet (MS PoP).

Invoke-Expression "$env:windir\system32\cscript.exe $env:windir\system32\slmgr.vbs /skms azkms.core.windows.net:1688"
