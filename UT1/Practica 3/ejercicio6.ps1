# Pide una ruta al usuario 
$directorio = Read-Host "escribe un directorio"
# Si esun directorio busca los archivos de ese directorio en recursivo con sub)   
if (Test-Path $directorio -PathType Container){
Write-host "Es un Directorio aqui tienes los archivo del directorio"
Get-ChildItem -Path $directorio -Recurse
 }
 # Sino escribe no es un directorio
Else {Write-host "No es un Directorio" }