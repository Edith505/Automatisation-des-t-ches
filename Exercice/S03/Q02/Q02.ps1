Param(
    [string]$path = "$PSScriptRoot\ip.csv"
)
$csvFile = Import-Csv -Path $path  

foreach ($line in $csvFile) {
    $connected = Test-Connection $line.AdresseIP -Count 1 -Quiet -ErrorAction SilentlyContinue
    if ($connected) {
        $line.Statut = 'connected'
        $line.NomServeur = [System.Net.Dns]::GetHostEntry($line.AdresseIP).HostName
    }
    else {
        $line.Statut = 'disconnected'  
    }

    [System.Net.Dns]::GetHostEntry('8.8.8.8').HostName
}


$csvFile | Export-Csv -Path $path -NoTypeInformation