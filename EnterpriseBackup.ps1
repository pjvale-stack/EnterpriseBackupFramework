#Requires -Version 5.1

Set-StrictMode -Version Latest

$ErrorActionPreference = 'Stop'

$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

$CoreModule = Join-Path $ProjectRoot "Modules\EBF.Core\EBF.Core.psd1"

Import-Module $CoreModule -Force

Start-EBF