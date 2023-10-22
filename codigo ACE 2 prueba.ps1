#variables
$acl = Get-Acl -Path C:\Prueba2

#Deshabilitar la herencia y eliminar TODAS las reglas de acceso
$acl.SetAccessRuleProtection($true,$false)

#Añadir al grupo Administradores control total 
$permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos    
$acl.SetAccessRule($ace)

$permisos = 'Usuarios del dominio','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos    
$acl.SetAccessRule($ace)

#Establecer los pèrmisos
$acl | Set-Acl -Path C:\Prueba2

#Muestra por pantalla lo que modifica 
$ace | Format-Table