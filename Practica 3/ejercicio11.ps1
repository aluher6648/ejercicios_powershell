# Variable edad de la persona
[int]$edad= read-host = "¿que edad tienes?"
# Por edades da un precio o otro 
Switch ($edad) {
    {($_ -le 4)} {Write-host "Enttra Gratis"}
    {($_ -gt 4) -and ($_ -lt 18)} {Write-host "paga 5€"}
    {($_ -ge 18)} {Write-host "Paga 10€"}
    }
