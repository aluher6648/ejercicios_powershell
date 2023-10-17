
# Variables
$departamentos =Import-Csv departamentos.csv -Delimiter ";"
$carpetaEMP = "C:\EMPRESA"


# Creacion carpeta empresa y  permisos de la misma
New-Item -Path $carpetaEMP -ItemType Directory
New-SmbShare -Path $carpetaEMP -Name EMPRESA  -ReadAccess todos 

# Crear la estructura de carpetas
foreach($departamento in $departamentos) #lee dentro de departamentos.csv 
   {

   # Variables lee el departamento y crea hijos de carpetas desde la principal
   $depart= $departamento.departamento 
   $CarpetaDEP = Join-Path -Path $carpetaEMP -ChildPath $depart

   # Crea un item nuevo con las variables 
   New-Item -Path $CarpetaDEP  -ItemType Directory

   
   # Da permisos y accesos a las carpetas.
   New-SmbShare -Path "$CarpetaDEP" -Name "$depart" -ChangeAccess "$depart" -FullAccess Administradores -ReadAccess "Usuarios del domino"

}


