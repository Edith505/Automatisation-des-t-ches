# demander une date à l'utilisateur
do{
    [datetime]$read = read-host "Date valide "
    
    $date = $read -as [datetime]

}until($date)

# obtenir la date d'aujourd'hui
$today = Get-Date

$diff = $today - $date 

Write-Host "$($diff.Days) JOURS $($diff.Hours) HEURES $($diff.Minutes) MINUTES"
