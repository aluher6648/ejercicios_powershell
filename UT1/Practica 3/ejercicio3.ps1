# Pide que escribas un numero y luego pide otro
[int]$numero1 = Read-Host " Escribe un numero "
[int]$numero2 = Read-Host " Escribe de nuevo un numero "
# compara el primero con el segundo si es mayor , igual  o menor lo indica
if ($numero1 -gt $numero2) { Write-Host "$numero1 es mayor que $numero2"}
elseif ($numero1 -eq $numero2) {Write-Host "$numero1 es igual a $numero2"}
else {Write-Host "$numero1 es menor que $numero2"}