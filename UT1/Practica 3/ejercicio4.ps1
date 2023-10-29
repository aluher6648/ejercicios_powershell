# Pide que escribas un numero y luego pide otro
[double]$numero1 = Read-Host " Escribe un numero "
[double]$numero2 = Read-Host " Escribe otro numero " 
write-host "`n++++++++++++CALCULADORA++++++++++++" 
Write-Host "`nSumar"
Write-Host "`nRestar"
Write-Host "`nMultiplicar"
Write-Host "`nDividir"  
$resultado = read-host "`n¿que deseas hacer? elige una opcion"

Switch ($resultado) {
        Sumar {$resultado = $numero1 + $numero2 }
        Restar {$resultado = $numero1 - $numero2 }
        Multiplicar {$resultado = $numero1 * $numero2 }
        dividir {$resultado = $numero1 / $numero2 }
     
}
   Write-Host "$resultado"