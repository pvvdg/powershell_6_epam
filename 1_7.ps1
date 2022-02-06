# 7.	Написать сценарий, выводящий суммарное время пингования компьютера (например 8.8.8.8) в сети. (используя WMI)

$i = 0
$Requests = 4
$Addr = "8.8.8.8"
$CommonPingingTime = 0
while ($i -ne $Requests) {
    $ping = Get-WmiObject Win32_PingStatus -f "Address='$Addr'"
    Write-Host $ping.Address, $ping.ResponseTime "ms"
    $CommonPingingTime += $ping.responseTime
    $i++
}

Write-Host "Common Pinging Time = $CommonPingingTime ms"