# Afficher la version de PowerShell
Write-Host "=== VERSION DE POWERSHELL ===" -ForegroundColor Green
$PSVersionTable

# Créer un dossier TP_PowerShell
mkdir Q04_PowerShell

# Se déplacer dans le dossier
cd Q04_PowerShell

# Créer un fichier test.txt
Write-Host "=== CREATION DU FICHIER ===" -ForegroundColor Green
New-Item test.txt

# Lister les fichiers
Write-Host "=== LISTING DES FICHIERS ===" -ForegroundColor Green
ls

# Revenir au répertoire racine
Write-Host "=== RETOUR AU RÉPERTOIRE RACINE ===" -ForegroundColor Green
cd ..








