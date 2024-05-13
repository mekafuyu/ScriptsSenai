mkdir $env:USERPROFILE\dev\ -ea 0

echo "Inciando"

Expand-Archive -Path .\flutter_windows_3.19.6-stable.zip -DestinationPath $env:USERPROFILE\dev\