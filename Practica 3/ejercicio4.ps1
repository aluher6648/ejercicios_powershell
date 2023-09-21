# Pide que escribas un numero y luego pide otro
[int]$numero1 = Read-Host " Escribe un numero "
[int]$numero2 = Read-Host " Escribe otro numero "
Write-host ¿que deseas hacer? elige una opcion
Switch ($numero1 , $numero2) {
        Sumar {+=}
        Restar {-=}
        Multiplicar {*}
        dividir {/}
        default{}
}