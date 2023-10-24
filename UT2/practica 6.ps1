# Variables
$departamentos =Import-Csv empleados.csv -Delimiter ";"
$carpetaEMP_u = "C:\EMPRESA_users"

# Creacion carpeta empresa y  permisos de la misma
New-Item -Path $carpetaEMP_u -ItemType Directory


# Crear la estructura de carpetas de usuarios
foreach($empleado in $empleados) #lee dentro de empleados.csv 
   {

   # Variables de lso usuarios 
   $nombre = $empleado.nombre
   $apellido =$empleado.apellido
   $CarpetaEMP_u_p = Join-Path -Path $carpetaEMP -ChildPath ($nombre).($apellido)

   # Crea un item nuevo con las variables 
   New-Item -Path $CarpetaEMP_u_p  -ItemType Directory

   
   # Da permisos y accesos a las carpetas y compartir el recurso 
   New-SmbShare -Path "$CarpetaEMP_u" -Name "$depart" -ChangeAccess "$depart" -FullAccess Administradores -ReadAccess "Usuarios del dominio"

}
