***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Resource    ../recursos.robot

#robot -d result_uno  cp001_firefox.robot

***Variables***

${url}          https://adessistemas.senasica.gob.mx/amtif/login.xhtml

${navegador}    firefox


***Keywords***


*** Test Cases ***
001-1 Ingresar a la URL del Sistema.
    [Documentation]     Ingresar a la URL del sistema   (Caso CP001-Inicio de Sesión RL )
    Dormir Todos  .1
    Abrir navegador    
    Maximizar  
    Pantalla 
    Cerrar 

001-2 Ingresar usuario y contraseña, dar click en el Botón "Entrar".
    [Documentation]     Ingresar usuario y contraseña, dar click en el Botón "Entrar"   (CP001-Inicio de Sesión RL)  
    Dormir Todos  .4
    Abrir navegador    
    Maximizar   
    Login
    Obtener  //h1[contains(.,'Bienvenido representante legal')]
    Pantalla
    Cerrar 


