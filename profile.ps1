
$timeFilePath_Override = "$PSScriptRoot\LastExecutionTime.txt"

function Get-Theme_Override {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
}

# Call the theme

Get-Theme_Override

# Commands I want to run for every terminal window

Get-Date

# Check if my AutoHotKey compiler exists and add it to the path

$autohotkey_compiler = "D:\Documents\AutoHotkey\ahkcompiler.py"

function Compile-AHK {
    if (!(Test-Path $autohotkey_compiler)) {
        python $autohotkey_compiler $args
    }
}
Set-Alias -Name ahkc -Value Compile-AHK
