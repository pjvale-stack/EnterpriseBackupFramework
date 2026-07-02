function Show-EBFBanner{

param(
[EBFSession]$Session
)

Clear-Host

Write-Host ""

Write-Host "==============================================================="

Write-Host ""

Write-Host " Enterprise Backup Framework"

Write-Host ""

Write-Host " Version : $($Session.FrameworkVersion)"

Write-Host " Session : $($Session.SessionId)"

Write-Host " Server  : $($Session.ComputerName)"

Write-Host " User    : $($Session.UserName)"

Write-Host ""

Write-Host "==============================================================="

Write-Host ""

}