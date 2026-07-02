function Show-EBFBanner {

<#
.SYNOPSIS
Displays the Enterprise Backup Framework banner.

.DESCRIPTION
Writes the startup banner and basic execution information to the console.

.PARAMETER Session
Current EBF session.

#>

    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [EBFSession]$Session
    )

    $line = ('=' * 70)

    Write-Host ""
    Write-Host $line -ForegroundColor DarkGray
    Write-Host " Enterprise Backup Framework" -ForegroundColor Cyan
    Write-Host $line -ForegroundColor DarkGray

    Write-Host (" Version  : {0}" -f $Session.Framework.Version)
    Write-Host (" Codename : {0}" -f $Session.Framework.Codename)
    Write-Host (" Computer : {0}" -f $Session.ComputerName)
    Write-Host (" User     : {0}" -f $Session.UserName)
    Write-Host (" Session  : {0}" -f $Session.SessionId)
    Write-Host (" Started  : {0:yyyy-MM-dd HH:mm:ss}" -f $Session.StartTime)

    Write-Host $line -ForegroundColor DarkGray
    Write-Host ""
}