$acl = Get-Acl -Path C:\prueba 
$acl.Access | Format-Table

## Rompe la herencia y preserva las reglas de acceso
   # $acl.SetAccessRuleProtection($true,$true)   

 # Set-Acl -Path C:\Prueba -AclObject $acl 
   $acl | Set-Acl -Path C:\Prueba 


## Eliminar todas reglas de acceso
foreach ($ace in $listaAce) 
{
    $ace | Format-List
    $acl.RemoveAccessRule($ace)
          
}
   
#añadir grupo Administradores tenga Control Total
     
$permiso = 'Administradores' ,'Fullcontrol','ContainerInherit,ObjectInherit','None','Allow'

$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso

$acl.SetAccessRule($ace)

$acl | set-acl -Path C:\Prueba