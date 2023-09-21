# Guarda los passwords como variables
$passw1 ="1234ABC"
$Passw2 = Read-Host "Introduce el password"
#Compara los passwords
If ($passw1 -ieq $passw2){Write-Host "El password introducido coincide"}
else {Write-Host "El password introducido no coincide"  }