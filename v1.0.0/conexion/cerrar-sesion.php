<?php
include_once 'basededatos1.php';
session_start();
$tabla=tabla_usuarios();
$conexion=conexion();



session_unset(); 
session_destroy(); 

$url = "http://" . $_SERVER['HTTP_HOST'];
$url = str_replace('conexion/cerrar-sesion.php', "", $url);

echo "<meta http-equiv='Refresh' content='0;url=".$url."'>";


?>