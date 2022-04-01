<?php

include('menu.php');
include_once 'conexion/basededatos1.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Automatizaciones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="css/home.css">
    </head>
    
    <body>
        <div class="tituloprincipal">
      <center><h1> Automatizaciones </h1></center>
        </div>
         
        <div class ="auto">
            <h1> ¿Qué es la automatización?</h1>
        </div>
   <div class= "table">
    <table  width="560" cellspacing="1" cellpadding="4" border="0" bgcolor="#1E679A"  >
        <tr>
            <td class="title" >
                <b>Tareas Testing</b>
            </td>  
        </tr>
        <tr>
        <td bgcolor="#83D2D9">
        
        
            <?php 
            $conexion=conexion();

                $qry = $conexion->query("SELECT * FROM project_list where status='0' and type_activity='Proyectos' or type_activity='otro' or type_activity ='Automatizacion' ");
                        
                while($row=$qry->fetch_assoc()):
                    
                        
            ?>
            <ul >
                <li><?php echo ucwords($row['name']);  ?>  </li>
            </ul >
            <?php endwhile; ?>
            
           

        </td>
        </tr>
    </table>
        </div>                 
 
    <script src="js/script.js"></script>
    </body>

</html>