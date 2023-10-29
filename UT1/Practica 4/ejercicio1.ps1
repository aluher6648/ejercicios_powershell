#Variables
$nombre = Read-host "¿como te llamas?"
[int]$numero = Read-host "dime un numero"
[int]$contador = 0

#Escribe nombre tantas veces como $numero
while ($contador -lt $numero) 
      {Write-host $nombre 
                  $contador++} 
