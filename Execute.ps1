# Manually install dependencies
Install-Module PSGraph -Verbose

Import-Module .\AzViz.psm1 -Verbose

#Install Choclatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Install Graph Viz
Choco install graphviz

$ResourceGroups = 'test-resource-group', 'demo-resource-group'
Get-AzNetworkVizualization -ResourceGroups $ResourceGroups  -ShowGraph -OutputFormat png -Verbose

$ResourceGroups = "Arm-test111"
Get-AzNetworkVizualization -ResourceGroups $ResourceGroups  -ShowGraph -OutputFormat png -Verbose

cd 'C:\Users\ranab\OneDrive\Documents\AzViz'
Import-Module .\AzViz.psm1 -Verbose


$ResourceGroups = "Arm-test111"
Get-AzNetworkVizualization -ResourceGroups $ResourceGroups  -ShowGraph -OutputFormat png -Verbose