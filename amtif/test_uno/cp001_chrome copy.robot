***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Resource    ../recursos.robot

#robot -d result_uno  cp001_chrome.robot

***Variables***
#${url}          https://adessistemas.senasica.gob.mx/amtif/
${url}          https://adessistemas.senasica.gob.mx/amtif/login.xhtml
${navegador}    chrome
${tiempo}   0


***Keywords***


*** Test Cases ***
# CP001-1 Ingresar a la URL del Sistema.
#     [Documentation]     Ingresar a la URL del sistema   (Caso CP001-Inicio de Sesión RL )
#     Esperar Iniciar ok      10
#     Dormir Todos  ${tiempo}
#     Abrir navegador    
#     Maximizar  
#     Obtener   //h1[contains(.,'Aviso de Movilización Tipo Inspección Federal')]   
#     Pantalla 
#     Cerrar 

# CP001-2 Ingresar usuario y contraseña, dar click en el Botón "Entrar".
#     [Documentation]     Ingresar usuario y contraseña, dar click en el Botón "Entrar"   (CP001-Inicio de Sesión RL)  
#     Esperar Iniciar ok      10
#     Dormir Todos  ${tiempo}
#     Abrir navegador    
#     Maximizar 
#     Obtener   //h1[contains(.,'Aviso de Movilización Tipo Inspección Federal')]    
#     Login
#     Obtener  //h1[contains(.,'Bienvenido representante legal')]
#     Pantalla
#     Cerrar 

CP002-1 Ingresar a la URL del Sistema.
    [Documentation]     Ingresar a la URL del sistema   (Caso CP002-Inicio de Sesión RL )
    Esperar Iniciar ok      10
    Dormir Todos  ${tiempo}
    Abrir navegador    
    Maximizar  
    Obtener   //h1[contains(.,'Aviso de Movilización Tipo Inspección Federal')]  
    Pantalla 
    Cerrar 

CP002-2 Ingresar usuario y contraseña "Erroneos" click Entrar.
    [Documentation]     Ingresar usuario y contraseña Erroneos , dar click en el Botón "Entrar"   (CP002-Usuario Erroneo)  
    Esperar Iniciar ok      10
    Dormir Todos  .2
    Abrir navegador    
    Maximizar  
    Obtener   //h1[contains(.,'Aviso de Movilización Tipo Inspección Federal')]   
    Texto    (//input[contains(@type,'text')])[1]   rgdur45sd  
    Texto    (//input[@class='form-control'])[2]    sena2o20
    Pantalla
    Click     //input[@type='submit']
    Scroll  0  100
    Pantalla
    Cerrar 


