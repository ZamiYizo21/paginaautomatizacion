<?php

include_once 'conexion/basededatos1.php';



    if(isset($_POST['usuario']) && isset($_POST['contraseña']) && isset($_POST['tipousuario'])){
        //Guarda en una variable lo que el usuario ingresó en el campo usuario
        $usuario = $_POST['usuario'];
        $contraseña = ($_POST['contraseña']);
        $tipousuario = ($_POST['tipousuario']);
        $tabla=tabla_usuarios();
        $conexion=conexion();

        $sql="SELECT *FROM $tabla WHERE email = '".$usuario."' and password = '".md5($contraseña)."' and type = '".$tipousuario."' ";
        $result=mysqli_query($conexion,$sql);
        $row = $result->fetch_array(MYSQLI_ASSOC);
        
        if($row == true ){  
            
                $_SESSION['firstname'] = $row['firstname']; 
                $_SESSION['lastname'] = $row['lastname']; 
                $id=$row['id'];
                $usuario=$row['email'];        	             
                $_SESSION['id'] = $id;          
                $_SESSION['email'] = $usuario;  
                $_SESSION['avatar'] = $row['avatar']; 

                $sql="UPDATE $tabla SET conectado='1' WHERE id='$id' AND email='$usuario'";
                $result=mysqli_query($conexion,$sql);              
                echo'<script type="text/javascript">
                    alert("Ingreso correcto");
                    window.location.href="Automatizaciones/v1.0.0/home.php";
                    </script>';    
        
            
        }else{
            // no existe el usuario
            echo'<script type="text/javascript">
                alert("Usuario o contraseña incorrectas");
                </script>';
        }

    }



?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="icon" href="assets/logoicono.ico">

    

</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap');

body, html {
    height: 100%;
}

body {
    margin: 0;
    padding: 0;
    font-family: 'Open Sans', sans-serif;
    background: #00ACC1;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    /* No Scrollbar */
    overflow: hidden;
}

.form-box {
    width: 300px;
    padding: 40px;
    background: #fff;
    text-align: center;
    border-radius: 7px;
}



.form-box input[type="text"], .form-box input[type="password"]  {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid#C8C8C8;
    padding: 14px 10px;
    width: 200px;
    outline: none;
    color: black;
    border-radius: 24px;
    transition: 0.25s;
}


.form-box select  {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid#C8C8C8;
    padding: 14px 10px;
    width: 200px;
    outline: none;
    color: black;
    border-radius: 24px;
}

.form-box input[type="text"]:focus, .form-box input[type="password"]:focus {
    width: 280px;
    border-color: #C8C8C8;
}

.form-box span{
position:fixed;
margin-top: -52px;
margin-left: 80px;

}

.form-box button[type="submit"] {
    border: 0;
    background: #002656;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #002656;
    padding: 14px 40px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
}



</style>
<body>
    <form action="" method="POST" name="Prueba" class="form-box animated fadeInUp">
        <img src="https://i.postimg.cc/g2fdS2VC/Recurso-jpg.jpg"width="250"  >
        <input type="text" placeholder="Usuario" autofocus name="usuario">
        <input type="password" placeholder="Contraseña" name="contraseña">
        <span id="show-hide-passwd" action="hide" class="fa fa-eye-slash" ></span>   
        <select name="tipousuario" id="tipousuario">
            <option value="1" >Testing</option>
            <option value="4">Cliente</option>
        </select>    
        <button type="submit"  >
            Entrar
        </button>
    </form>


    <script>
		$(document).on('ready', function() {
			$('#show-hide-passwd').on('click', function(e) {
				e.preventDefault();

				var current = $(this).attr('action');

				if (current == 'hide') {
					$(this).prev().attr('type','text');
					$(this).removeClass('fa fa-eye-slash').addClass('fa fa-eye').attr('action','show');
				}

				if (current == 'show') {
					$(this).prev().attr('type','password');
					$(this).removeClass('fa fa-eye-slash').addClass('fa fa-eye-slash').attr('action','hide');
				}
			})
		})
	</script>
</body>

</html>