#importar de csv
$empleados =Import-Csv empleados.csv -Delimiter ";"

#Bucle carpeta personal todos los emppleados de ese departamento 
foreach ($empleado in $empleados)
 
{
    # variables 
    $nombre = $empleado.nombre
    $apellido =$empleado.apellido
    
    # actualiza la ruta de perfil de cada empleado de ese departamento PERSONAL
    If ($empleado.departamento -eq "PERSONAL"){
        Set-ADUser -Identity "$nombre" -ProfilePath "\\empresa-DC1\Empresa_users$\$nombre.$apellido"
    }
}