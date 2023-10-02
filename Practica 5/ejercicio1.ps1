#Funciones para calculadora
Function Sumar {
    param ([int]$numero1,[int]$numero2 )
    $sumar = $numero1 + $numero2
    Write-Host "RESULTADO $sumar"
}

Function Restar {
    param ([int]$numero1,[int]$numero2 )
    $restar = $numero1 - $numero2
    Write-Host "RESULTADO $restar"
}

Function Multiplicar {
    param ([int]$numero1,[int]$numero2 )
    $multiplicar = $numero1 * $numero2
    Write-Host "RESULTADO $multiplicar"
}

Function dividir {
    param ([int]$numero1,[int]$numero2 )
    $dividir = $numero1 / $numero2
    Write-Host "RESULTADO $dividir"
}

# Pide que escribas un numero y luego pide otro
[double]$numero1 = Read-Host " Escribe un numero "
[double]$numero2 = Read-Host " Escribe otro numero " 
write-host "`n++++++++++++CALCULADORA++++++++++++" 
Write-Host "`nSumar"
Write-Host "`nRestar"
Write-Host "`nMultiplicar"
Write-Host "`nDividir"  
Write-Host "`nSalir" 
$opcion = read-host "`n¿que deseas hacer? elige una opcion"

Switch ($opcion) {
        Sumar {Sumar $numero1 $numero2 }
        Restar {Restar  $numero1  $numero2 }
        Multiplicar {Multiplicar $numero1  $numero2 }
        dividir {Dividir $numero1  $numero2 }
        salir {exit}
}
 
   Write-Host "$resultado"
