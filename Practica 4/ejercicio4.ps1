#variables
[int]$numero = Read-host "Escribe un numero entero y positivo"
[int]$imparbase= 1
#suma 2 a la base impar 1 hasta el numero indicado
While ($imparbase -le $numero) {
   Write-Host -NoNewline  " $imparbase, "
   $imparbase +=2
   }
