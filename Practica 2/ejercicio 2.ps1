# Crea un script que pida dos numeros al usuario e imprima en pantalla la suma, la resta la multiplicacion y division y resto.

# Operaciones matematicas
$suma = $numero1+$numero2
$resta = $numero1-$numero2
$multiplicacion = $numero1*$numero2
$division = $numero1/$numero2
$resto = $numero1%$numero2


# Solicita los numeros
[int]$numero1 = Read-Host "introduce el primer numero"
[int]$numero2 = Read-Host "introduce el segundo numero"
Write-Output ""

# Resultados de operaciones mostrados
Write-host "AQUI TIENES LOS RESULTADOS"
Write-Output ""
write-host "La suma de $numero1 y $numero2 es = $suma"
write-host "La resta de $numero1 y $numero2 es = $resta"
write-host "La multiplicacion de $numero1 y $numero2 es = $multiplicacion"
write-host "La division de $numero1 y $numero2 es = $division"
write-host "El resto de $numero1 y $numero2 es = $resto" 