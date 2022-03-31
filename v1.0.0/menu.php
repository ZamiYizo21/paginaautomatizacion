
<!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--========== BOX ICONS ==========-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--========== CSS ==========-->
        <link rel="stylesheet" href="css/stylesmenu.css">
        

        <title>Sistema de automatizacion</title>
    </head>
    <body>
        <!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
                <div class="header__toggle">
                    <i class='bx bx-menu' id="header-toggle"></i>
                </div>
            </div>
        </header>

        <!--========== NAV ==========-->
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    
    
                    <div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Inicio</h3>
    
                            <a href="home.php" class="nav__link ">
                            <i class="fas fa-home nav__icon" ></i>
                                <span class="nav__name">Principal</span>
                            </a>
                            
                            
                        </div>
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Test</h3>
    
                            <a href="test.php" class="nav__link ">
                            <i class="fas fa-home nav__icon" ></i>
                                <span class="nav__name">Test</span>
                            </a>
                            
                            
                        </div>
    
                        

                        
                <a href="conexion\cerrar-sesion.php" class="nav__link nav__logout">
                <i class="fas fa-door-open nav__icon" ></i>
                    <span class="nav__name">Salir</span>
                </a>
            </nav>
        </div>

<!--Inicio Modales -->



<!--Fin Modales --> 
        <!--========== MAIN JS ==========-->
        <script src="js/main.js"></script>
    
    </body>
</html>