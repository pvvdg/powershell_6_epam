# 6.	Вывести свободное место на локальных дисках. На каждом и сумму. (используя WMI)

Get-WmiObject -Class Win32_LogicalDisk |
Select-Object -Property DeviceID, `
@{Label = 'Free (Gb)'; expression = { ($_.FreeSpace / 1GB).ToString('F1') } } | Format-Table
# @{Label = 'Total (Gb)'; expression = { ($_.Size / 1GB).ToString('F1') } } 