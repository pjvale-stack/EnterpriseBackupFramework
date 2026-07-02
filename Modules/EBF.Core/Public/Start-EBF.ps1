function Start-EBF {

<#
.SYNOPSIS
Starts the Enterprise Backup Framework.

.DESCRIPTION
Creates the execution session and starts the framework bootstrap
sequence.

#>

    [CmdletBinding()]
    param()

    try {

        $Session = New-EBFSession

        Show-EBFBanner -Session $Session

        Write-Host ""
        Write-Host "Framework successfully initialized." -ForegroundColor Green
        Write-Host ""

    }
    catch {

        Write-Host ""
        Write-Host "FATAL ERROR" -ForegroundColor Red
        Write-Host $_.Exception.Message -ForegroundColor Red
        Write-Host ""

        throw

    }

}