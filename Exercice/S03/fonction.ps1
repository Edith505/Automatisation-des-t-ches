<# terminer par les parametres
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true, Position=0)]
    [ValidateRange(0, [int]::MaxValue)]
    [int]$NombreDecimal
)

# convertir nombre base 10 en base 2
# avec boucle et modulo
if ($NombreDecimal -eq 0) {
    $binaire = "0"
}
else {
    $binaire = ""
    $temp = $NombreDecimal
    while ($temp -gt 0) {
        $reste = $temp % 2              
        $binaire = $reste + $binaire    
        $temp = [Math]::Floor($temp / 2) 
    }
}

Write-Host "Nombre binaire : $binaire"
[Convert]::ToString($NombreDecimal, 2)
#>


[CmdletBinding()]
param(
    [Parameter(Mandatory=$true,
                ValueFromPipeline=$true,
                ValueFromPipelineByPropertyName=$true
    )]
    [ValidateScript ({ $_ -ge 0 })]
    [int]$base
)

process{
    [string]$binaire = ""
    [int]$Nombre = $base

    while ($Nombre -gt 0) {
        $reste = $Nombre % 2
        $Nombre = [Math]::Floor($Nombre / 2)
        $binaire = $reste.ToString() + $binaire
    }
    $binaire
}


