* Setting *
Library  SeleniumLibrary


* Variables *

${navegador}  Chrome
${pagina}  https://test-reponerya.pwstasp.com.uy/login
${Usuario}  barbarareponera@gmail.com
${Contrasena}  Pwst12345
${bingresar}  xpath://*[@id="app"]/div/main/div/div[2]/div[3]/div[1]/form/button/span
${Validacion}  //*[@id="app"]/div[1]/main/div/div[1]/div/div[1]

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
    Sleep  2s
Verificar el error
    Wait Until Page Contains  Datos de sesión incorrectos
    Sleep  5s
Cerrar pruebas
    close browser
* Keywords *