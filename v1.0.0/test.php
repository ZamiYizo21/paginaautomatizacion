<?php

include('menu.php');

?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/test.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body id="body">
        <div class="container-principal">
            <h1 class="title">Automatizaciones</h1>
            <div class="cards">                
                <div class="row">
                    <div class="card" id="cardRegistro">
                        <div class="card-body">
                            <button class="btn_previus" onclick="previus_option('Registro',0)">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleRegistro"></h5>
                                <p class="card-info" id="card_infoRegistro"></p>
                            </div>
                            <button class="btn_next" onclick="next_option('Registro',0)">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>

                    <div class="card" id="cardInicioSesion">
                        <div class="card-body">
                            <button class="btn_previus" onclick="previus_option('InicioSesion',1)">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleInicioSesion"></h5>
                                <p class="card-info" id="card_infoInicioSesion"></p>
                            </div>
                            <button class="btn_next" onclick="next_option('InicioSesion',1)">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>
                </div>

                <div class="row">
                    <div class="card" id="cardDistribuidor">
                        <div class="card-body">
                            <button class="btn_previus" onclick="previus_option('Distribuidor',2)">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleDistribuidor"></h5>
                                <p class="card-info" id="card_infoDistribuidor"></p>
                            </div>
                            <button class="btn_next" onclick="next_option('Distribuidor',2)">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>

                    <div class="card" id="cardMenuDesplegable">
                        <div class="card-body">
                            <button class="btn_previus" onclick="previus_option('MenuDesplegable',3)">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleMenuDesplegable"></h5>
                                <p class="card-info" id="card_infoMenuDesplegable"></p>
                            </div>
                            <button class="btn_next" onclick="next_option('MenuDesplegable',3)">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>
                </div>
        </div>

        <script src="js/test.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>