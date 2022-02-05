# 2.	Получить список всех пространств имён классов WMI. (используя WMI)

# Get-WmiObject -Namespace root -Class __NAMESPACE | Select-Object Name

Function Get-AllWmiNamespace {
    Param (
        $NameSpace = 'root'
    )
    Get-WmiObject -Namespace $NameSpace -Class __NAMESPACE |`
        ForEach-Object {
            ($result = '{0}\{1}' -f $_.__NAMESPACE, $_.Name)
        Get-AllWmiNamespace $result
    }
}

Get-AllWmiNamespace