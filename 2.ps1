# 1.	Выводить сообщение при каждом запуске приложения MS Word. (используя WMI)

$wmiParameters = @{
    Query            = "select * from __instancecreationevent within 5 where targetinstance isa 'win32_process' and targetinstance.name='WINWORD.exe'"
    SourceIdentifier = "ProcessStarted"
    Action           = { Write-Host "Word running" }
    Timeout          = 100
}
Register-WmiEvent @wmiParameters

# Register-WMIEvent -Query "select * from __instancecreationevent within 5 where targetinstance isa 'Win32_Process' and targetinstance.name='WINWORD.exe'" -sourceIdentifier "ProcessStarted" -Action { Write-Host "RUNNING" } 