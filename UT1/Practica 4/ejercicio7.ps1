#pide un numero entero
[int] $numero = Read-Host "Introduce un numero entero"
#bucle dentro de bucle escribe tantas filas como numero entero y suma columna a cada fila
for ( $fila = 1; $fila -le $numero; $fila++ )
{ for ( $columna = 1; $columna -le $fila ; $columna++ )
{ Write-Host -NoNewLine "*" }
  Write-Host ""}
