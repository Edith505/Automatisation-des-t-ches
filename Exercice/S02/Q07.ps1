<#
Écrivez un script qui recherche tous les fichiers se terminant par .log 
dans un dossier (Chemin absolue). Le script doit uniquement cibler les fichiers créés
il y a plus de 30 jours et les déplacer vers un dossier d'archivage dans le même
dossier que votre script (variable chemin du script).
#>

# test Get-ChildItem .... | Foreach-Object { $_.creationtime = "2020-11-02 12:00:00" }

# Rechercher et déplacer les fichiers .log de plus de 30 jours
Get-ChildItem -Path "C:\users\2433177\" -Filter "*.log" -File | 
    Where-Object { $_.CreationTime -lt (Get-Date).AddDays(-30) } |
    Move-Item -Destination (Join-Path -Path $PSScriptRoot -ChildPath "archivage") -Force

# correction :
New-Item $PSScriptRoot\archivage -ItemType Directory -Force
New-Item $PSScriptRoot\archivage\test1.log -ItemType File -Force
New-Item $PSScriptRoot\archivage\teste2.log -ItemType File -Force | 
    ForEach-Object { $_.creationtime = "2020-11-02 12:00:00" }

Get-ChildItem -Path $PSScriptRoot | 
    where CreationTime -lt (Get-Date).AddDays(-30) |
    Move-Item -Destination (Join-Path -Path $PSScriptRoot -ChildPath "archivage") -Force