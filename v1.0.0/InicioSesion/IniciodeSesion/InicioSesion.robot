* Setting *
Library  SeleniumLibrary


* Variables *

${navegador}  Chrome
${pagina}  https://test-reponerya.pwstasp.com.uy/login
${Usuario}  barbarareponerya@gmail.com
${Contrasena}  Pwst1234
${bingresar}  xpath://*[@id="app"]/div/main/div/div[2]/div[3]/div[1]/form/button/span



* Test Case *
Ingresar a la pagina a probar
    Open browser    ${pagina}   ${navegador}
    Sleep  3s
Escribir Usuario
    input text  id=input-36   ${Usuario}
    Sleep  1s
Escribir Contrasena
    input text  xpath://*[@id="input-40"]   ${Contrasena}
    Sleep  1s
Click en Ingresar
    click element  ${bingresar}
    Sleep  6s
Cerrar pruebas
    close browser
* Keywords *