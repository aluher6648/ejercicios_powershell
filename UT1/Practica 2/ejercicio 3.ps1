# scrip pregunta numero horas trabajadas y coste  hora y muestra el salario
# Solicita los datos 
[int] $numhoras = Read-Host "introduce numero de hora trabajadas"
[int] $costehora = Read-Host "Introduce el coste por hora"
# operaciones matematicas
$Salariototal = $numhoras*$costehora
$salariototal = Write-Host "SALARIO TOTAL =$salariototal"