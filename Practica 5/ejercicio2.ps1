$datos = Import-Csv usuarios.csv -Delimiter ","

foreach ($alumno in $datos)
{
 Write-host "alumno:$($alumno.nombre) $($alumno.apellidos) Grupo:$($alumno.grupo)"
}