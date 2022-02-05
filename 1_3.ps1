# 3.	Получить список классов работы с принтером. (используя WMI)

Function Get-WMIClassForPrinters {
    # Get-CimClass -ClassName *printer*
    Get-WmiObject -Class *printer* -List
}

Get-WMIClassForPrinters