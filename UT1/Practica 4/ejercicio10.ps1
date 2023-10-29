
do {
 Write-host "Opciones:"
 Write-host "a) Crear una carpeta"
 Write-Host "b) Crear un fichero nuevo"
 Write-Host "c) Cambiar el nombre de un fichero o carpeta"
 Write-Host "d) Borrar un archivo o carpeta"
 Write-Host "e) verificar si existe un fichero o carpeta"
 Write-Host "f) Mostrar el contenido de un directorio"
 Write-Host "g) Mostrar la fecha y hora actuales"
 Write-host "x) Salir"
 
 #elije la opcion del do
 $opcion = Read-host "Elija una opcion (letra)" 

 switch ($opcion)
 {

 #crea una nueva carpeta
 a {
 $nuevacarpeta = read-host "introduce la ruta de la carpeta a crear" 
 New-Item -Path $nuevacarpeta -ItemType Directory
 }
 #Crea un nuevo archivo
 b {
 $nuevoarchivo= read-host "introduce el nombre el archivo a crear"
 New-Item -Name $nuevoarchivo -ItemType File 
 }
 #cambia el nombre de fichero o carpeta
 c {
 $rutaorigen = read-host "introduce nombre de carpeta  o nombre del fichero (ruta) a cambiar nombre  "
 $rutadestino = Read-Host "introduce el nuevo nombre"
 Rename-Item -Path $rutaorigen -NewName $rutadestino
 }
 #
 d {
 $nombre = Read-Host "introduce el nombre del archivo  o carpeta (ruta) a eliminar "
 Remove-Item -Path $nombre -Recurse 
 }
 #Verifica si existe o no un archivo o carpeta
 e {
 $verificar = Read-Host "Introduce el nombre de archivo o carpeta (ruta)  a verificar "
 if (Test-Path $verificar)
    {Write-Host "Existe"}
 else
    {write-host "No Existe"}
 }
 #Mostrar el contenido de un directorio
 f {
 $contenido = Read-host "Introduce un directorio a mostrar (Ruta)"
 Get-ChildItem -Path  $contenido
 }
 #Mustra la fecha y hora actuales
 g {
 Get-date  -DisplayHint date 
 Get-Date  -DisplayHint time
 }
 #sale dela aplicacion
 x {
 Write-host "SALIENDO...."
 }
 }
}
while ($opcion -ne 'x')