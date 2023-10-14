Write-host "------------------------------------------------------"
Write-host "Le renommage des fichiers est en cours. Patientez ...."
Write-host "------------------------------------------------------"
$q = dir -Recurse | Where-Object {$_.name -like "*jpg*"}
$temp_dir=''
$a = 0
foreach ($qs in $q)
{

    $name_dir = Split-Path -Path (Get-Location) -Leaf

    $chemin_complet = Get-ChildItem -Path $qs -Recurse | Select-Object -ExpandProperty FullName 

    $chemin_dir = Split-Path -Path $chemin_complet -Parent

    if ($chemin_dir -ne $temp_dir) {
        $a=0
    }
    $a = ($a + 1)
    $name = $qs.FullName
    Rename-Item $name -NewName "$a.jpg"
    $temp_dir = $chemin_dir
}

$q = dir -Recurse | Where-Object {$_.name -like "*mp4*"}
$temp_dir=''
$a = 0
foreach ($qs in $q)
{

    $name_dir = Split-Path -Path (Get-Location) -Leaf

    $chemin_complet = Get-ChildItem -Path $qs -Recurse | Select-Object -ExpandProperty FullName 

    $chemin_dir = Split-Path -Path $chemin_complet -Parent

    if ($chemin_dir -ne $temp_dir) {
        $a=0
    }
    $a = ($a + 1)
    $name = $qs.FullName
    Rename-Item $name -NewName "$a.mp4"
    $temp_dir = $chemin_dir
}
Write-host "----------------------------------"
Write-host "Le renommage des fichiers est fini"
Write-host "-------------------------------------------------------------"
Write-host "Ajout maintenant du mot voyage au début du fichier trip.json"
Write-host "-------------------------------------------------------------"
pause
(get-content trip.json) | %{$_  -Replace "^.","voyage={"} | set-content trip.json
Write-host "---------------------------------------------------"
Write-host "Le fichier trip.json a été modifié. Terminé !"
Write-host "---------------------------------------------------"
pause
