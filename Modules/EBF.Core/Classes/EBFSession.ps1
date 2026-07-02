class EBFSession {

    [Guid]$SessionId

    [datetime]$StartTime

    [datetime]$EndTime

    [timespan]$Duration

    [string]$ComputerName

    [string]$UserName

    [EBFFrameworkInfo]$Framework

    [string]$Status

    EBFSession() {

        $this.SessionId = [Guid]::NewGuid()

        $this.StartTime = Get-Date

        $this.ComputerName = $env:COMPUTERNAME

        $this.UserName = "$($env:USERDOMAIN)\$($env:USERNAME)"

        $this.Framework = [EBFFrameworkInfo]::new()

        $this.Status = "Initializing"

    }

    [void] Finish() {

        $this.EndTime = Get-Date

        $this.Duration = $this.EndTime - $this.StartTime

        $this.Status = "Completed"

    }

}