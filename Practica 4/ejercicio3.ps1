#variables
[int]$numero = Read-host "Escribe un numero entero y positivo"
[int]$contador = 0

#
While ($numero -ge $contador) {
   Write-Host -NoNewline  " $numero, "
   $numero--
   }
