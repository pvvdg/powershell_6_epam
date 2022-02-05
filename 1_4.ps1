# 4.	Вывести информацию об операционной системе, не менее 10 полей. (используя WMI)

# Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, ServicePackMajorVersion, OSArchitecture, CSName, CodeSet, `
#     SystemDevice, SystemDrive, WindowsDirectory, TotalVirtualMemorySize

Get-WmiObject -Class Win32_OperatingSystem | Select-Object Caption, Version, ServicePackMajorVersion, OSArchitecture, CSName, CodeSet, `
    SystemDevice, SystemDrive, WindowsDirectory, TotalVirtualMemorySize