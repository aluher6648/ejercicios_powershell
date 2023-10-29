# pregunta la edad y guarda variable edad
[int] $edad = Read-host "¿que edad tienes?"
# Compara si es mayor de 17 años 
if ($edad -gt 17) { Write-Host "Es mayor de edad"}
else {Write-Host "No es mayor de edad"}
      