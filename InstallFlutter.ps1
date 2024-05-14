Write-Output "==== Instalando Flutter ===="

$InstallPath = $env:USERPROFILE

Write-Output "> Criando Pasta..."
mkdir $InstallPath\dev\ -ea 0
Write-Output "> Pasta Criada"

Write-Output "> Inciando Extração..."
Expand-Archive -Path ".\flutter_windows_3.19.6-stable.zip" -DestinationPath "$InstallPath\dev\" -F
Write-Output "> Extraído para: $InstallPath\dev\"

Write-Output "> Configurando Path..."
# $env:Path += ";$InstallPath\dev\flutter\bin"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\SetPaths.ps1' Path $InstallPath\dev\flutter\bin"
Write-Output "> Path Configurado"

Write-Output "> Flutter Instalado"