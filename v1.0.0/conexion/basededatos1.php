<?php
define("SERVIDOR","localhost");
define("USUARIO","root");
define("PASSWORD","");
define("BD","pwst");

function conexion()
{
    $host_db = "localhost";
    $user_db = "root";
    $pass_db = "";
    $db_name = "pwst";


    
    return $conexion=mysqli_connect($host_db,$user_db,$pass_db,$db_name);
}
function tabla_usuarios()
{            
    return "users";
}



?>