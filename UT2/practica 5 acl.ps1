## UNIDADES COMPARTIDAS ##

# Variables
$departamentos =Import-Csv departamentos.csv -Delimiter ";"
$carpetaEMP = "C:\EMPRESA"

# Creacion carpeta empresa y  permisos de la misma
New-Item -Path $carpetaEMP -ItemType Directory
#New-SmbShare -Path $carpetaEMP -Name EMPRESA  -ReadAccess "Usuarios del dominio"  

# Crear la estructura de carpetas
foreach($departamento in $departamentos) #lee dentro de departamentos.csv 
   {

   # Variables lee el departamento y crea hijos de carpetas desde la principal
   $depart= $departamento.departamento 
   $CarpetaDEP = Join-Path -Path $carpetaEMP -ChildPath $depart

   # Crea un item nuevo con las variables 
   New-Item -Path $CarpetaDEP  -ItemType Directory

   
   # Da permisos y accesos a las carpetas.
   New-SmbShare -Path "$CarpetaDEP" -Name "$depart" -ChangeAccess "$depart" -FullAccess Administradores -ReadAccess "Usuarios del dominio"

}
 ### ACL Y  ACE DE UNIDOADES COMARTIDAS ###

## ADMINNISTRADORES ##
#variables
$acl1 = Get-Acl -Path C:\EMPRESA

#Deshabilitar la herencia y eliminar TODAS las reglas de acceso
$acl1.SetAccessRuleProtection($true,$false)

#Añadir al grupo Administradores control total 
$permisosADMIN = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$aceADMIN = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosADMIN    
$acl1.SetAccessRule($aceADMIN)
Set-Acl -Path C:\EMPRESA  -AclObject $acl1

## DEPARTAMENTOS##

# Permisos de los departamentos

foreach ($departamento in $departamentos)
{

#permisos de modificar para cada departamnto
$dep = $departamento.departamento
 $acl2 = Get-Acl -Path C:\EMPRESA\$dep
 $permisosDEP = $dep,'Modify','ContainerInherit,ObjectInherit','None','Allow'
 $aceDEP = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosDEP
 $acl2.SetAccessRule($aceDEP)
 Set-Acl -Path C:\EMPRESA\$dep -AclObject $acl2


 $acl3 = Get-Acl -Path C:\EMPRESA\$dep
 $permisosOU = "Usuarios del dominio",'Read','ContainerInherit,ObjectInherit','None','Allow'
 $aceOU = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosOU
 $acl3.SetAccessRule($aceOU)
 Set-Acl -Path C:\EMPRESA\$dep -AclObject $acl3
}


