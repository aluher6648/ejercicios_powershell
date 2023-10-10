#Variables import-CSV
$departamentos =Import-Csv departamentos.csv -Delimiter ";"
$empleados = import-Csv empleados.csv -Delimiter ";"

#Crear unidad organizativa EMPRESA
New-ADOrganizationalUnit -Name "EMPRESA" -Path "DC=EMPRESA,DC=LOCAL" 

#Crea Unidades Organizativas Departamentos desde CSV y las organiza en grupos
foreach($departamento in $departamentos)
{
 $depart= $departamento.departamento 
 $desc= $departamento.descripcion

      
    New-ADOrganizationalUnit -Name $depart -Description $desc -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL" 
    New-ADGroup -Name $depart -GroupCategory Security -GroupScope Global -Path "OU=$depart,OU=EMPRESA,DC=EMPRESA,DC=LOCAL" 
}

#Crea usuarios en Cada OU de departamento y los añade a su grupo correspondiente
foreach($empleado in $empleados)
 {
  $departem = $empleado.departamento
  $nombre = $empleado.nombre
  $apellido =$empleado.apellido
   
    New-ADUser -Name "$nombre" -Path "OU=$departem,OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -SamAccountName "$nombre" -UserPrincipalName "$nombre.$apellido@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$nombre" -Surname "$apellido" -ChangePasswordAtLogon $true -Enabled $true 

    }