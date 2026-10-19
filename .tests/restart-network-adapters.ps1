<#
.SYNOPSIS
	Restarts the network adapters (needs admin rights)
.DESCRIPTION
	This PowerShell script restarts all local network adapters (needs admin rights).
.EXAMPLE
	PS> ./restart-network-adapters
.LINK
	htts://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

#Requires -RunAsAdministrator

try {
    $StopWatch = [system.diagnostics.stopwatch]::startNew()

    Get-NetAdapter | Restart-NetAdapter

    [int]$Elapsed = $StopWatch.Elapsed.TotalSeconds
    "✅ restarted all local network adapters in $Elapsed sec"
    exit 0 # success
}
catch {
    "⚠️ ERROR: $($Error[0]) (script line $($_.InvocationInfo.ScriptLineNumber))"
    exit 1
}

$codex = Get-ChildItem -LiteralPath '../screenshots' -Filter '*.png' -File

foreach ($img in $codex) {
    optipng.exe -v -o7 -zm1-9 -clobber -- $img
    Move-Item -LiteralPath $img -Destination '../screenshots/optimized/png'
}

$codex = Get-ChildItem -LiteralPath '../screenshots/optimized/png' -Filter '*.png' -File

foreach ($img in $codex) {
    $jpg = $img -replace ('png$', 'jpg')
    ffmpeg.exe -y -i $img -q:v 2 $jpg
}

$codex = Get-ChildItem -LiteralPath '../screenshots/optimized/png' -Filter '*.jpg' -File

foreach ($img in $codex) {
    Move-Item -LiteralPath $img -Destination '../screenshots/optimized/jpg' -Force
}
