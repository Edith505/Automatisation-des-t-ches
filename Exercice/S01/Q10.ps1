# Script de création de structure de dossiers pour une session de 15 semaines
# Ce script automatise la création de dossiers et fichiers répétitifs

# Récupérer le chemin du répertoire courant où le script est exécuté
$basePath = Get-Location
# Récupérer le chemin du répertoire courant où le fichier script est situé
$basePath = $PSScriptRoot

# Boucle pour créer la structure pour chaque semaine (1 à 15)
ForEach($i in 1..15) {
    # Formater le numéro de semaine
    $weekNumber = $i.ToString("00")
    
    $weekFolder = Join-Path -Path $basePath -ChildPath "Semaine$weekNumber"
    
    Write-Host "Création du dossier pour la semaine $weekNumber"
    
    # Créer le dossier de la semaine
    #New-Item -ItemType Directory -Path $weekFolder -Force > $null
    
    # Créer le sous-dossier Note_de_cours
    # Force permet de ne pas générer d'erreur si le dossier existe déjà et $null supprime la sortie de la commande
    $notesFolder = Join-Path -Path $weekFolder -ChildPath "Note_de_cours"
    New-Item -ItemType Directory -Path $notesFolder -Force > $null
    
    # Créer le fichier vide note.md
    $noteFile = Join-Path -Path $notesFolder -ChildPath "note.md"
    New-Item -ItemType File -Path $noteFile -Force > $null
    
    # Créer le sous-dossier Travaux
    $workFolder = Join-Path -Path $weekFolder -ChildPath "Travaux"
    New-Item -ItemType Directory -Path $workFolder -Force > $null
}

# Message directement écrit dans la console
Write-Host "dossiers créés avec succès" -ForegroundColor Green