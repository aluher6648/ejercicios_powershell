# pide un numero entero
[int] $numero = Read-Host "Introduce un número entero"
#bucle dentro de bucle , solo pide impares formula segundo for
for ($fila = 1; $fila -le $numero; $fila++) 
{ for ($columna = (2 * $fila - 1); $columna -ge 1; $columna -= 2) 
    {Write-Host -NoNewline "$columna "} Write-Host ""}

