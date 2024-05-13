Write-Output "==== Instalando Android Command Line Tools  ===="

$InstallPath = $env:LOCALAPPDATA

Write-Output "> Criando Pasta..."
mkdir $InstallPath\Android\ -ea 0
Write-Output "> Pasta Criada"

Write-Output "> Inciando Extração..."
Expand-Archive -Path ".\commandlinetools-win-11076708_latest.zip" -DestinationPath "$InstallPath\Android\"
Write-Output "> Extraído para: $InstallPath\Android\"

Write-Output "> Configurando Path..."
$env:Path += ";$InstallPath\Android\cmdline-tools\bin"
$env:ANDROID_HOME = "$InstallPath\Android\cmdline-tools"
$env:ANDROID_SDK_ROOT = "$InstallPath\Android\cmdline-tools"
Write-Output "> Path Configurado"

Write-Output "> Android Command Line Tools Instalado"