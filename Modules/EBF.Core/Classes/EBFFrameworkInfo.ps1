class EBFFrameworkInfo {

    [string]$Name
    [string]$Version
    [string]$Codename
    [string]$Author
    [datetime]$BuildDate

    EBFFrameworkInfo() {

        $this.Name       = "Enterprise Backup Framework"
        $this.Version    = "0.1.0-alpha"
        $this.Codename   = "Foundation"
        $this.Author     = "Paulo Vale"
        $this.BuildDate  = Get-Date

    }

}