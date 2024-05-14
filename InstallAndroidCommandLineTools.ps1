Write-Output "==== Instalando Android Command Line Tools  ===="

$InstallPath = $env:LOCALAPPDATA

Write-Output "> Criando Pasta..."
mkdir $InstallPath\Android\ -ea 0
Write-Output "> Pasta Criada"

Write-Output "> Inciando Extração..."
Expand-Archive -Path ".\commandlinetools-win-11076708_latest.zip" -DestinationPath "$InstallPath\Android\latest" -F
Write-Output "> Extraído para: $InstallPath\Android\"

Write-Output "> Configurando Path..."
# $env:Path += ";$InstallPath\Android\cmdline-tools\bin"
# $env:ANDROID_HOME = "$InstallPath\Android\cmdline-tools"
# $env:ANDROID_SDK_ROOT = "$InstallPath\Android\cmdline-tools"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\SetPaths.ps1' Path $InstallPath\Android\cmdline-tools\latest\bin"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\SetPaths.ps1' ANDROID_HOME $InstallPath\Android\cmdline-tools\latest"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\SetPaths.ps1' ANDROID_SDK_ROOT $InstallPath\Android\cmdline-tools\latest"
Write-Output "> Path Configurado"

Write-Output "> Android Command Line Tools Instalado"