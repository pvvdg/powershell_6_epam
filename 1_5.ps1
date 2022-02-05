# 5.	Получить информацию о BIOS. (используя WMI)

# Get-CimInstance -ClassName Win32_BIOS

Get-WmiObject -Class Win32_BIOS