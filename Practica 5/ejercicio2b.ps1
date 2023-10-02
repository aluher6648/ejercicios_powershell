$usuarios = Import-Csv usuarios.csv 

foreach ($alumno in $usuarios)
{
 Write-host "Alumno: $($alumno.nombre) $($alumno.apellidos)     Grupo: $($alumno.grupo)"
}