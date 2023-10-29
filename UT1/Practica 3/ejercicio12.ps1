#aviso de contenidoWrite-host "`n  TODAS NUESTRAS PIZZAS LLEVAN MOZZARELA Y TOMATE CON LA BASE"#eleccion opcion pizza
$opcion = Read-host "`n ¿QUIERES UNA PIZZA VEGETARIANA? SI/NO"
#depende de la contestacion $opcion  ingredientes vegetarianos y tipo pizza
if ($opcion -ieq "si" ) 
  { write-host "`n  ++++++++++ INGREDIENTES ++++++++"
               "`n  Pimiento "
               "`n  Tofu "
               $ingredienteextra = Read-host "`n Elije uno de los ingredientes "
               $tipopizza = "vegetariana"
               }
#depende de la contestacion $opcion  ingredientes no vegetarianos y tipo pizza
Else 
  {Write-Host "`n  ++++++++++ INGREDIENTES ++++++++"
               "`n  Peperoni "
               "`n  Jamon "
               "`n  Salmon "
               $ingredienteextra = Read-host "`n Elije uno de los ingredientes "
               $tipopizza = "no vegetariana"
               }
#muestra el tipo de pizza y eleccion igredientes
Write-host "`n HAS SELECCIONADO PIZZA" $tipopizza  "CON MOZZARELLA , TOMATE Y" $ingredienteextra