
$timeFilePath_Override = "$PSScriptRoot\LastExecutionTime.txt"

function Get-Theme_Override {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
}

# Call the theme

Get-Theme_Override

# Commands I want to run for every terminal window

Get-Date
