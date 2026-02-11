cls
$resultat = @()
foreach($user in Get-ChildItem -Path "C:\Users" -Directory){
        $obj = [PSCustomObject] @{
            NomUtilisateur = $user.Name
            CheminProfil   = $user.FullName 
        }
        $resultat += $obj
} 

$resultat | Format-Table -AutoSize