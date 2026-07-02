function New-EBFSession {

<#
.SYNOPSIS
Creates a new Enterprise Backup Framework session.

.DESCRIPTION
Initializes a new EBFSession object that represents the current execution
of the Enterprise Backup Framework.

.OUTPUTS
EBFSession

#>

    [CmdletBinding()]
    param()

    return [EBFSession]::new()

}