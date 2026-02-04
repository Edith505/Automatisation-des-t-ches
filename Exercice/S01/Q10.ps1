$position = Get-Location

foreach ($i in 1..15) {
    $weeknumber = $i.ToString("00")

    $weekfolder = Join-Path -Path $position -ChildPath "S$weeknumber"

    New-Item -ItemType Directory -Path "$weekfolder" -Force -WhatIf
}

