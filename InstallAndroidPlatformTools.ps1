Write-Output "==== Instalando Android  ===="

$InstallPath = $env:LOCALAPPDATA

Write-Output "> Criando Pasta..."
mkdir $InstallPath\Android\ -ea 0
Write-Output "> Pasta Criada"

Write-Output "> Inciando Extração..."
Expand-Archive -Path ".\platform-tools-latest-windows.zip" -DestinationPath "$InstallPath\Android\" -F
Write-Output "> Extraído para: $InstallPath\Android\"

Write-Output "> Configurando Path..."
# $env:Path += ";$InstallPath\Android\platform-tools"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\SetPaths.ps1' Path $InstallPath\Android\platform-tools"
Write-Output "> Path Configurado"

Write-Output "> Android Platform Tools Instalado"