echo "Inciando Criação de Pasta"
mkdir $env:USERPROFILE\dev\ -ea 0
echo "Pasta Criada"


echo "Inciando Extração"
Expand-Archive -Path .\flutter_windows_3.19.6-stable.zip -DestinationPath $env:USERPROFILE\dev\
echo "Extraido"

echo "Configurando Path"
$env:Path += ";$env:USERPROFILE\dev\flutter\bin"
echo "Path Configurado'"