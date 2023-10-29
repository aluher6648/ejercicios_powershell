﻿
$empleados =Import-Csv empleados.csv -Delimiter ";"
$carpetaEMP_u = "C:\EMPRESA_users"

# Creacion carpeta empresa y  permisos de la misma
New-Item -Path $carpetaEMP_u -ItemType Directory
New-SmbShare -Path "$carpetaEMP_u" -Name EMPRESA_users$  -changeAccess "Usuarios del dominio" -FullAccess Administradores

# Crear la estructura de carpetas de usuarios
foreach($empleado in $empleados) #lee dentro de empleados.csv 
   {
   # Variables de lso usuarios 
   $nombre = $empleado.nombre
   $apellido =$empleado.apellido
   $usuario = "$nombre.$apellido"  
   $cuenta = "$nombre.$apellido"
   $CarpetaEMP_u_p = Join-Path -Path $carpetaEMP_u -ChildPath ("$nombre.$apellido")

   # Crea un item carpetas de usuarios privadas, nuevo con las variables 
   New-Item -Path $CarpetaEMP_u_p  -ItemType Directory
   
   }

### ACL Y  ACE DE UNIDOADES COMARTIDAS ###

## ADMINNISTRADORES ##
#variables
$acl1 = Get-Acl -Path C:\EMPRESA_users

#Deshabilitar la herencia y eliminar TODAS las reglas de acceso
$acl1.SetAccessRuleProtection($true,$false)

#Añadir al grupo Administradores control total 
$permisosADMIN = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$aceADMIN = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosADMIN    
$acl1.SetAccessRule($aceADMIN)
Set-Acl -Path C:\EMPRESA_users  -AclObject $acl1


## USUARIOS##
# Permisos de los USUARIOS
foreach ($empleado in $empleados)
{

#permisos de modificar para cada usuario
 $nombre = $empleado.nombre
 $apellido =$empleado.apellido
 $usuario = "$nombre.$apellido"
 $cuenta = "$nombre.$apellido"
 $acl2 = Get-Acl -Path C:\EMPRESA_users\$usuario
 $permisoscarpetauser = "EMPRESA\$nombre",'Fullcontrol','ContainerInherit,ObjectInherit','None','Allow'
 $acecarpetauser = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoscarpetauser
 $acl2.SetAccessRule($acecarpetauser)
 Set-Acl  -AclObject $acl2 -Path C:\EMPRESA_users\$usuario 


 $acl3 = Get-Acl -Path C:\EMPRESA_users

#Deshabilitar la herencia y eliminar TODAS las reglas de acceso
$acl3.SetAccessRuleProtection($true,$false)

#Añadir al grupo Administradores control total 
$permisosADMIN = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$aceADMIN = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosADMIN    
$acl3.SetAccessRule($aceADMIN)
Set-Acl -Path C:\EMPRESA_users\$usuario  -AclObject $acl3


 # Configura el script de inicio y la unidad de red principal para el usuario
  $dep_bat = $empleados.departamento
   Set-ADUser -Identity $empleado.nombre -ScriptPath "carpetas$dep_bat.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-dc1\Empresa_users$\$cuenta"

}
