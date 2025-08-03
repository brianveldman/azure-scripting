#Define IP Address
$ipAddress = "10.10.30.51"

#9443 Replication Port
$port = 9443

try {
    $tcpClient = New-Object System.Net.Sockets.TcpClient
    $tcpClient.Connect($ipAddress, $port)
    Write-Host "Connected with $ipAddress on $port"
    $tcpClient.Close()
}
catch {
    Write-Host "Connection to $ipAddress on port $port was not successful"
}
