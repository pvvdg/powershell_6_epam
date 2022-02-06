# 8.	Создать файл-сценарий вывода списка установленных программных продуктов в виде таблицы с полями Имя и Версия. (используя WMI)

Get-WMIObject -Class Win32_InstalledWin32Program | Format-Table Name, Version  