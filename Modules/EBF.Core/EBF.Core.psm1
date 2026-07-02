# ---------------------------------------------------------------------------
# Enterprise Backup Framework
# EBF.Core
# ---------------------------------------------------------------------------

Set-StrictMode -Version Latest

# ---------------------------------------------------------------------------
# Load Classes
# ---------------------------------------------------------------------------

$ClassesPath = Join-Path $PSScriptRoot 'Classes'

if (Test-Path $ClassesPath) {

    Get-ChildItem -Path $ClassesPath -Filter '*.ps1' |
        Sort-Object Name |
        ForEach-Object {
            . $_.FullName
        }

}

# ---------------------------------------------------------------------------
# Load Private Functions
# ---------------------------------------------------------------------------

$PrivatePath = Join-Path $PSScriptRoot 'Private'

if (Test-Path $PrivatePath) {

    Get-ChildItem -Path $PrivatePath -Filter '*.ps1' |
        Sort-Object Name |
        ForEach-Object {
            . $_.FullName
        }

}

# ---------------------------------------------------------------------------
# Load Public Functions
# ---------------------------------------------------------------------------

$PublicPath = Join-Path $PSScriptRoot 'Public'

if (Test-Path $PublicPath) {

    Get-ChildItem -Path $PublicPath -Filter '*.ps1' |
        Sort-Object Name |
        ForEach-Object {
            . $_.FullName
        }

}

Export-ModuleMember -Function *