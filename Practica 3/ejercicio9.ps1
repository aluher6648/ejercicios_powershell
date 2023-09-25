#variables
$renta= Read-Host " ¿Cual es tu renta actual? "

#muestra el tipo impositivo segun la renta.
switch ($renta) {
        {$renta -lt 10000} {}
}