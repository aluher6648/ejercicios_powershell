#variables
[int]$renta= Read-Host " ¿Cual es tu renta actual? "

#muestra el tipo impositivo segun la renta.
switch ($renta) {
        {$renta -lt 10000} {write-host "tipo impositivo 5%"}
        {($renta -ge 10000) -and ($renta -le 19999)} {write-host "tipo impositivo 15%"}
        {($renta -ge 20000) -and ($renta -le 34999)} {write-host "tipo impositivo 20%"}
        {($renta -ge 35000) -and ($renta -le 59999)} {write-host "tipo impositivo 30%"}
        {$renta -ge 60000} {write-host "tipo impositivo 45%"}
}