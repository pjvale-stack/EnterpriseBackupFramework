$Folders = @(
    "Classes",
    "Private",
    "Public"
)

foreach($Folder in $Folders)
{
    $Path = Join-Path $PSScriptRoot $Folder

    if(Test-Path $Path)
    {
        Get-ChildItem $Path -Filter *.ps1 |
            Sort-Object Name |
            ForEach-Object {

                . $_.FullName

            }
    }
}

Export-ModuleMember -Function *