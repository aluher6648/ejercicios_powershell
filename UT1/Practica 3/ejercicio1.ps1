# Pide un numero al usuario 
[int] $numero = Read-Host "escribe un numero"

# Verifica si el resto de 2 es 0 sera par si no sera impar
if ($numero % 2 -eq 0) {
    Write-Host "el numero es par"
} else {
    Write-Host "el numero es impar"
}
