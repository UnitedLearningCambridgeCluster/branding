# 
param (
    [Parameter(Mandatory)]
    [ValidateSet('CAST','Parkside','Coleridge','Trumpington','Galfrid','SharedServices')]
    [string]$SiteCode
)    

# Create directory path if it doesn't exist
if (-not (Test-Path "$($env:ProgramData)\$SiteCode\Branding"))
{
    Mkdir "$($env:ProgramData)\$SiteCode\Branding"
}

Write-Output "Delete exisiting Wallpapers and LockScreens"
Remove-Item $env:ProgramData\$SiteCode\Branding\*.*


Write-Output "Running Command: Copy-Item .\Wallpaper.jpg C:\ProgramData\SiteCode\Branding\Wallpaper.jpg -Force -Verbose"
Copy-Item .\$SiteCode\Wallpaper13072023.jpg $env:ProgramData\$SiteCode\Branding\Wallpaper13072023.jpg -Force -Verbose

Write-Output "Running Command: Copy-Item .\LockScreen.jpg C:\ProgramData\SiteCode\Branding\LockScreen.jpg -Force -Verbose"
Copy-Item .\$SiteCode\LockScreen13072023.jpg $env:ProgramData\$SiteCode\Branding\LockScreen13072023.jpg -Force -Verbose




