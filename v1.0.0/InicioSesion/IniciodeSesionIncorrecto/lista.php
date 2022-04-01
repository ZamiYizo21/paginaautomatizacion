<?php

    $listar = null;
    $directorio = opendir("Resultados/");
    
    
    while($elemento = readdir($directorio))
    {
        if($elemento != '.' && $elemento != '..')
        {
        if(is_dir("Resultados/".$elemento))
        {
            $listar .= "<li class=list-group-item><a href='Resultados/$elemento' target='_blank' >$elemento/</a></li>";
        }
        else
        {
            $listar .= "<li class=list-group-item><a href='Resultados/$elemento' target='_blank'>$elemento</a></li>";
        }
        }
    }

 ?>
 <!DOCTYPE html>
 <html lang="es">
     <head>
     
         <title></title>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    
    body {
    margin: 0;
    padding: 0;
    font-family: 'Open Sans', sans-serif;
    background: #00ACC1;
    
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    
    }
    h1{
    color: white;
    }
    </style>
    </head>
     <body>
     <br>   
     
        <h1 class="text-center">Listado de pruebas realizadas</h1>
        <br>
        <div class="container-fluid">
            <br>
            <div class="row">
                <div class="col-md-4">
                    <ul class="list-group" >
                        <?php echo $listar ?>   
                    </ul>
                </div>    
            </div>
        </div>
     </body>
 </html>