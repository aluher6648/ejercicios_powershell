# Pide una ruta o fichero variable elemento
$Elemento = Read-Host "escribe la ruta de un fichero o carpeta "
# Condicion con Test-path existe o no 
if (Test-Path $Elemento -PathType Any) {write-host "existe"}
else{ write-host " no existe" }

