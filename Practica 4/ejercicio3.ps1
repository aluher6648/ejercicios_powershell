#variables
[int]$numero = Read-host "Escribe un numero entero y positivo"
[int]$contador = 0

#resta desde numero hasta contador por pantalla con comas y misma linea
While ($numero -ge $contador) {
   Write-Host -NoNewline  " $numero, "
   $numero--
   }
