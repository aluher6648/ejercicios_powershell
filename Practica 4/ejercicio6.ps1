#variables 
$num = 50
$numuser = Read-Host "¿En que numero estoy pensando de 0-100?"
#numero no igual bucle mayor o menor
while ($numuser -ne $num )
  {
  if ($numuser -lt $num )
    {Write-host "ES MAYOR prueba de nuevo"}

  Elseif ($numuser -gt $num)
   {Write-host "ES MENOR prueba de nuevo"}

$numuser = Read-Host "¿En que numero estoy pensando?"
}
 Write-host "$num ESE ES EL NUMERO"

