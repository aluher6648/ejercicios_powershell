#pide el numero de tabla de multiplicar
[int]$numero = Read-host " Nº tabla de multiplicar  "
#multiplica el numero por la base hasta el 10
for ($base=1 ;$base -le 10 ;$base++)
{$resultado = ($numero * $base )
#muestra la tabla 
Write-host " `n $numero X $base = $resultado" }