class EBFSession {

    [Guid]$SessionId

    [Int64]$ExecutionNumber

    [datetime]$StartTime

    [datetime]$EndTime

    [timespan]$Duration

    [string]$ComputerName

    [string]$UserName

    [string]$FrameworkVersion

    [string]$FrameworkCodename

    [string]$Status

    EBFSession(){

        $this.SessionId=[guid]::NewGuid()

        $this.StartTime=Get-Date

        $this.FrameworkVersion="0.1.0-alpha"

        $this.FrameworkCodename="Foundation"

        $this.ComputerName=$env:COMPUTERNAME

        $this.UserName="$env:USERDOMAIN\$env:USERNAME"

        $this.Status="Initializing"

    }

}