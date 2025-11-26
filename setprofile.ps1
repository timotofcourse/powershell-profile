$profilePath = Split-Path -Path $PROFILE
copy .\Microsoft.PowerShell_profile.ps1 $profilePath
copy .\profile.ps1 $profilePath