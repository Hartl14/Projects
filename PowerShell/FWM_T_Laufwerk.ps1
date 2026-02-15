<#
$vname = "Thomas" 
$nname = "Harfl"

$t_folders = Get-ChildItem -Path C:\temp -Directory

foreach ($folder in $t_folders) {
    $folderpath = $folder.FullName
    $foldername = $folder.name
        if ($foldername.tolower() -like "$nname*$vname" -or $foldername.tolower() -like "$vname*$nname" ) {
             Write-Host("$nname $vname existiert bereits! Bitte manuell prüfen! ------- Pfad: $folderpath") -ForegroundColor Red
    }
        else {new-item -ItemType Directory -Path c:\temp\"$nname $vname"}
    
}
#>


$excel_data = @()
$excel_data = Import-Excel -Path C:\temp\import.xlsx

$t_folders = @()
$t_folders = Get-ChildItem -path C:\temp -Directory

foreach ($current_name in $excel_data) {
    $vname = $current_name.Vorname.ToLower()
    $nname = $current_name.Nachname.ToLower()
    $foldernames = $t_folders.Name.ToLower()
    if ($foldernames -like "$nname?$vname")
    {
        Write-Host("enthalten")
    }
    
}