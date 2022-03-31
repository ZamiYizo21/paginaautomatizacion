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
    "Politicas de venta"
];

const infoMenuDesplegable=[
    "Se ejecutara un test con datos correctos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos",
    "Se ejecutara un test con todos los campos pero con datos incorrectos"
];

const color=[
    "#95C9FF",
    "#95C9FF",
    "#00ACC1"
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

//Inicializar Distribuidor
document.getElementById("card_titleMenuDesplegable").innerText=titleMenuDesplegable[0];
document.getElementById("card_infoMenuDesplegable").innerText=infoMenuDesplegable[0];
document.getElementById("cardMenuDesplegable").style.background=color[0];


//La cantidad de 0 es la cantidad de cards
var i=[0,0,0,0];

/*function next_option(card_name, position){
    alert("next")
    var title="title"+card_name;
    var c=i[position];
    if(c==title.length-1){
        c=0;
    }else{
        c++;
    }

    const card=document.getElementById("card"+card_name);
    const card_title=document.getElementById("card_title"+card_name);
    const card_info=document.getElementById("card_info"+card_name);

    card_title.dataset.previusText="title"+card_title[i];
    card_info.dataset.previusText="info"+card_name[i];
    card.style.background=color[i];
}*/

function previus_option(card_name, position){
    var c=i[position];

    if(c==0){
        c=titleRegistro.length-1;
    }else{
        c=c-1;
    }

    document.getElementById("cardRegistro").style.background=color[c];
    document.getElementById("card_titleRegistro").innerText=titleRegistro[c];
    document.getElementById("card_infoRegistro").innerText=infoRegistro[c];

    i[position]=c;
}

function next_option(card_name, position){
    var c=i[position];

    if(c==titleRegistro.length-1){
        c=0;
    }else{
        c++;
    }

    document.getElementById("cardRegistro").style.background=color[c];
    document.getElementById("card_titleRegistro").innerText=titleRegistro[c];
    document.getElementById("card_infoRegistro").innerText=infoRegistro[c];

    i[position]=c;
}