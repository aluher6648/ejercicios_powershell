#variables 
$pass = 1234
$numuser = Read-Host "¿Introducce la contraseña?"
#
while ($pass -ne $numuser )
  {
  if ($numuser -ne $pass )
    {Write-host "Contraseña Incorrecta"
    $numuser = Read-Host "Introduce de nuevo la contraseña"}
    }
   Write-host "Contraseña correcta"
  