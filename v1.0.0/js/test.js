//Registro
const titleRegistro=[
    "Registro",
    "Registro sin todos los campos",
    "Registro con todos los campos"
];

const infoRegistro=[
    "Se ejecutara un test con datos correctos",
    "Se ejecutara un test sin datos ingresados",
    "Se ejecutara un test con todos los campos pero con datos incorrectos"
];

//Inicio Sesion
const titleInicioSesion=[
    "Inicio sesion",
    "Inicio sesion con datos incorrectos"
];

const infoInicioSesion=[
    "Se ejecutara un test con datos correctos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos"
];

//Distribuidor
const titleDistribuidor=[
    "Razon Social",
    "RUC",
    "Ubicacion"
];

const infoDistribuidor=[
    "Se ejecutara un test con datos correctos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos"
];

//Menu Desplegable
const titleMenuDesplegable=[
    "Visualizar Pedido",
    "Repetir Pedido",
    "Cuentas Corrientes",
    "Politicas de venta",
    "Tickets",
    "Pedidos Guardados"
];

const infoMenuDesplegable=[
    "Se ejecutara un test con datos correctos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos"
];

//Home
const titleHome=[
    "Ver Promociones",
    "Ver Favoritos",
    "Ver Productos",
    "Categorias/Articulos"
];

const infoHome=[
    "Se ejecutara un test para ver el funcionamiento de promociones",
    "Se ejecutara un test para ver el funcionamiento de favoritos",
    "Se ejecutara un test para ver el funcionamiento de Productos",
    "Se ejecutara un test para ver el funcionamiento de categorias/articulos"
];

//Busqueda de articulos
const titleBusquedaArticulos=[
    "Busqueda de articulos",
    "Carrito"
];

const infoBusquedaArticulos=[
    "Se ejecutara un test para ver el funcionamiento de la busqueda de articulos",
    "Se ejecutara un test para ver el funcionamiento del carrito"
];

//Unificaciones RUC
const titleRUC=[
    "Unificaciones con RUC",
    "Unificaciones sin RUC"
];

const infoRUC=[
    "Se ejecutara un test para ver el funcionamiento de las unificaciones con RUC",
    "Se ejecutara un test para ver el funcionamiento de las unificaciones sin RUC"
];

//Pantallas con RUT
const titlePantallasRUT=[
    "Pantallas con RUT",
    "Pantallas sin RUT"
];

const infoPantallasRUT=[
    "Se ejecutara un test para ver el funcionamiento de las pantallas con RUT",
    "Se ejecutara un test para ver el funcionamiento de las pantallas sin RUT"
];

const color=[
    "#95C9FF",
    "#00ACC1",
    "#95C9FF",
    "#00ACC1",
    "#95C9FF",
    "#00ACC1",
]

//Inicializar Registro
document.getElementById("card_titleRegistro").innerText=titleRegistro[0];
document.getElementById("card_infoRegistro").innerText=infoRegistro[0];
document.getElementById("cardRegistro").style.background=color[0];

//Inicializar Inicio de Sesion
document.getElementById("card_titleInicioSesion").innerText=titleInicioSesion[0];
document.getElementById("card_infoInicioSesion").innerText=infoInicioSesion[0];
document.getElementById("cardInicioSesion").style.background=color[0];

//Inicializar Distribuidor
document.getElementById("card_titleDistribuidor").innerText=titleDistribuidor[0];
document.getElementById("card_infoDistribuidor").innerText=infoDistribuidor[0];
document.getElementById("cardDistribuidor").style.background=color[0];

//Inicializar Menu Desplegable
document.getElementById("card_titleMenuDesplegable").innerText=titleMenuDesplegable[0];
document.getElementById("card_infoMenuDesplegable").innerText=infoMenuDesplegable[0];
document.getElementById("cardMenuDesplegable").style.background=color[0];

//Inicializar Home
document.getElementById("card_titleHome").innerText=titleHome[0];
document.getElementById("card_infoHome").innerText=infoHome[0];
document.getElementById("cardHome").style.background=color[0];

//Inicializar Busqueda de articulos
document.getElementById("card_titleBusquedaArticulos").innerText=titleBusquedaArticulos[0];
document.getElementById("card_infoBusquedaArticulos").innerText=infoBusquedaArticulos[0];
document.getElementById("cardBusquedaArticulos").style.background=color[0];

//Inicializar Unificaciones RUC
document.getElementById("card_titleRUC").innerText=titleRUC[0];
document.getElementById("card_infoRUC").innerText=infoRUC[0];
document.getElementById("cardRUC").style.background=color[0];

//Inicializar Pantallas RUT
document.getElementById("card_titlePantallasRUT").innerText=titlePantallasRUT[0];
document.getElementById("card_infoPantallasRUT").innerText=infoPantallasRUT[0];
document.getElementById("cardPantallasRUT").style.background=color[0];

//La cantidad de 0 es la cantidad de carouseles
var i=[0,0,0,0,0,0,0,0];

//Registro flechas
function previus_optionRegistro(){
    var c=i[0];
    if(c==0){
        c=titleRegistro.length-1;
    }else{
        c=c-1;
    }
    if(c==1){
        document.getElementById("card_titleRegistro").style.color="#95C9FF";
    }else{
        document.getElementById("card_titleRegistro").style.color="#00ACC1";
    }

    document.getElementById("cardRegistro").style.background=color[c];
    document.getElementById("card_titleRegistro").innerText=titleRegistro[c];
    document.getElementById("card_infoRegistro").innerText=infoRegistro[c];

    i[0]=c;
}

function next_optionRegistro(){
    var c=i[0];

    if(c==titleRegistro.length-1){
        c=0;
    }else{
        c++;
    }

    if(c%2!=0){
        document.getElementById("card_titleRegistro").style.color="white";
    }else{
        document.getElementById("card_titleRegistro").style.color="#00ACC1";
    }

    document.getElementById("cardRegistro").style.background=color[c];
    document.getElementById("card_titleRegistro").innerText=titleRegistro[c];
    document.getElementById("card_infoRegistro").innerText=infoRegistro[c];

    i[0]=c;
}

//Inicio sesion flechas
function previus_optionInicioSesion(){
    var c=i[1];
    if(c==0){
        c=titleInicioSesion.length-1;
    }else{
        c=c-1;
    }

    if(c%2!=0){
        document.getElementById("card_titleInicioSesion").style.color="white";
    }else{
        document.getElementById("card_titleInicioSesion").style.color="#00ACC1";
    }

    document.getElementById("cardInicioSesion").style.background=color[c];
    document.getElementById("card_titleInicioSesion").innerText=titleInicioSesion[c];
    document.getElementById("card_infoInicioSesion").innerText=infoInicioSesion[c];

    i[1]=c;
}

function next_optionInicioSesion(){
    var c=i[1];

    if(c==titleInicioSesion.length-1){
        c=0;
    }else{
        c++;
    }

    if(cc%2!=0){
        document.getElementById("card_titleInicioSesion").style.color="white";
    }else{
        document.getElementById("card_titleInicioSesion").style.color="#00ACC1";
    }

    document.getElementById("cardInicioSesion").style.background=color[c];
    document.getElementById("card_titleInicioSesion").innerText=titleInicioSesion[c];
    document.getElementById("card_infoInicioSesion").innerText=infoInicioSesion[c];

    i[1]=c;
}

//Distribuidor flechas
function previus_optionDistribuidor(){
    var c=i[2];
    if(c==0){
        c=titleDistribuidor.length-1;
    }else{
        c=c-1;
    }

    if(c%2!=0){
        document.getElementById("card_titleDistribuidor").style.color="white";
    }else{
        document.getElementById("card_titleDistribuidor").style.color="#00ACC1";
    }

    document.getElementById("cardDistribuidor").style.background=color[c];
    document.getElementById("card_titleDistribuidor").innerText=titleDistribuidor[c];
    document.getElementById("card_infoDistribuidor").innerText=infoDistribuidor[c];

    i[2]=c;
}

function next_optionDistribuidor(){
    var c=i[2];

    if(c==titleDistribuidor.length-1){
        c=0;
    }else{
        c++;
    }

    if(c%2!=0){
        document.getElementById("card_titleDistribuidor").style.color="white";
    }else{
        document.getElementById("card_titleDistribuidor").style.color="#00ACC1";
    }

    document.getElementById("cardDistribuidor").style.background=color[c];
    document.getElementById("card_titleDistribuidor").innerText=titleRegistro[c];
    document.getElementById("card_infoDistribuidor").innerText=infoDistribuidor[c];

    i[2]=c;
}

//Menu Desplegable
function previus_optionMenuDesplegable(){
    var c=i[3];

    if(c==0){
        c=titleMenuDesplegable.length-1;
    }else{
        c=c-1;
    }

    if(c%2!=0){
        document.getElementById("card_titleMenuDespolegable").style.color="white";
    }else{
        document.getElementById("card_titleMenuDesplegable").style.color="#00ACC1";
    }

    document.getElementById("cardMenuDesplegable").style.background=color[c];
    document.getElementById("card_titleMenuDesplegable").innerText=titleMenuDesplegable[c];
    document.getElementById("card_infoMenuDesplegable").innerText=infoMenuDesplegable[c];

    i[3]=c;
}

function next_optionMenuDesplegable(){
    var c=i[3];
    if(c==titleMenuDesplegable.length-1){
        c=0;
    }else{
        c++;
    }

    if(c%2!=0){
        document.getElementById("card_titleMenuDesplegable").style.color="white";
    }else{
        document.getElementById("card_titleMenuDesplegable").style.color="#00ACC1";
    }

    document.getElementById("cardMenuDesplegable").style.background=color[c];
    document.getElementById("card_titleMenuDesplegable").innerText=titleMenuDesplegable[c];
    document.getElementById("card_infoMenuDesplegable").innerText=infoMenuDesplegable[c];

    i[3]=c;
}

//Inicio de sesion
function ejecutarInicioSesion(position){
    var c=i[position];
    //Inicio de sesion correcto
    if(c==0){
        $.ajax({
            type:"GET",
            url:"automatizaciones/InicioSesion/IniciodeSesion/InicioSesion.php",
            
            beforeSend: function(){
                $("#loading-screen").show();
            },
            complete:function(){
                $("#loading-screen").hide();
            },
            success: function(){
                
                Swal.fire({
                title: '<strong>Automatización realizada</strong>',
                icon: 'success',
                html:
                    'Vea el ' +
                    '<b><a href="acciones/ReponerYA/InicioSesion/IniciodeSesion/lista.php">log</a></b> ' +
                    'para conocer el estatus de la automatización',
                showCloseButton: true,
                focusConfirm: false,
                })
            },
            error: function(){
                Swal.fire(
                    'Error!',
                    'No se ejecuto la automatización!',
                    'error'
                )
            }
        });
        return;
    }
    //Inicio de sesion correcto
    if(c==1){
        $.ajax({
            type:"GET",
            url:"acciones/ReponerYA/InicioSesion/IniciodeSesion/InicioSesion.php",
            
            
            
            beforeSend: function(){
                $("#loading-screen").show();
            },
            complete:function(){
                $("#loading-screen").hide();
            },
            success: function(){
                
                Swal.fire({
                  title: '<strong>Automatización realizada</strong>',
                  icon: 'success',
                  html:
                    'Vea el ' +
                    '<b><a href="acciones/ReponerYA/InicioSesion/IniciodeSesion/lista.php">log</a></b> ' +
                    'para conocer el estatus de la automatización',
                  showCloseButton: true,
                  focusConfirm: false,
                })
            },
            error: function(){
                Swal.fire(
                      'Error!',
                      'No se ejecuto la automatización!',
                      'error'
                )
            }

        });
    }
}