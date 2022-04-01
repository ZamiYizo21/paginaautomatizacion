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
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionRegistro()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionRegistro()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleRegistro"></h5>
                                <p class="card-info" id="card_infoRegistro"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" onclick="ejecutarInicioSesion(0)">Ejecutar</button>
                    </div>

                    <div class="card" id="cardInicioSesion">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionInicioSesion()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionInicioSesion()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleInicioSesion"></h5>
                                <p class="card-info" id="card_infoInicioSesion"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>
                </div>

                <div class="row">
                    <div class="card" id="cardDistribuidor">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionDistribuidor()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionDistribuidor()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>    
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleDistribuidor"></h5>
                                <p class="card-info" id="card_infoDistribuidor"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>

                    <div class="card" id="cardMenuDesplegable">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionMenuDesplegable()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionMenuDesplegable()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleMenuDesplegable"></h5>
                                <p class="card-info" id="card_infoMenuDesplegable"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>
                </div>
                <div class="row">
                    <div class="card" id="cardHome">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionHome()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionHome()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleHome"></h5>
                                <p class="card-info" id="card_infoHome"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>

                    <div class="card" id="cardBusquedaArticulos">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionBusqueda()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionBusqueda()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleBusquedaArticulos"></h5>
                                <p class="card-info" id="card_infoBusquedaArticulos"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>
                </div>
                <div class="row">
                    <div class="card" id="cardRUC">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionRUC()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionRUC()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titleRUC"></h5>
                                <p class="card-info" id="card_infoRUC"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>

                    <div class="card" id="cardPantallasRUT">
                        <div class="buttons">
                            <button class="btn_previus" onclick="previus_optionRUT()">
                                <i class="fa-solid fa-angle-left"></i>
                            </button>
                            <button class="btn_next" onclick="next_optionRUT()">
                                <i class="fa-solid fa-angle-right"></i>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="txt-card">
                                <h5 class="card-title" id="card_titlePantallasRUT"></h5>
                                <p class="card-info" id="card_infoPantallasRUT"></p>
                            </div>
                        </div>
                        <button class="btn-ejecutar" id="card_ejecutar">Ejecutar</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/test.js"></script>
        <script src="js/script.js"></script>
        <script src="js/jquery-3.2.1.js"></script>
    </body>
</html>