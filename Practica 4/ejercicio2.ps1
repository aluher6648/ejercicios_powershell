#variables
[int]$edad = Read-host "¿Introduce tu edad?"
$contador= 1
#escribe edades hasta llegar a $edad
While ($contador -le $edad) {
   Write-Host $contador
   $contador++
   }