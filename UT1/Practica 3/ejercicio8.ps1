#variables de sexo
$sexo=Read-Host "¿cual es tu sexo? escribe F o M "
$nombre= Read-host "¿Cual es tu nombre?"

#condicion menor que M y mujer / mayor que N y hombre grupo A
if ($nombre -lt "M"   -and $sexo -ieq "F") {Write-host "GRUPO A"}
ElseIf ($nombre -gt "N" -and $sexo -ieq "M") {Write-Host "GRUPO A"}
else {Write-Host "GRUPO B" }

