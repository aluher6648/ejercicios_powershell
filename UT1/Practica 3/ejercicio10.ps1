#Variables
[double]$puntuacion= read-host "Introduce Puntuacion trabajador"
[int]$dinero= $puntuacion*2400

#Bloque Switch - segun la puntuacion escribe el nivel y sueldo
Switch ($puntuacion) {
    {($_ -eq 0.0)} {Write-host "Nivel:Inaceptable" "`nDinero a percibir:"$dinero "€"}
    {($_ -eq 0.4)} {Write-host "Nivel:Aceptable" "`nDinero a percibir:"$dinero "€"}
    {($_ -ge 0.6)} {Write-host "Nivel:Meritorio" "`nDinero a percibir:"$dinero "€"}

}