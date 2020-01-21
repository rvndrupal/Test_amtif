***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Library     ScreenCapLibrary
Resource    ../recursos.robot


#robot -d result_uno  cp001_chrome.robot

***Variables***
#${url}          https://adessistemas.senasica.gob.mx/amtif/
${url}          https://adessistemas.senasica.gob.mx/amtif/login.xhtml
${navegador}    chrome
${tiempo}   0
${dir}      Img
${fecha_sacrificio}     21/01/2020
${fecha_proceso}        22/01/2020
${fecha_empaque}        23/01/2020


***Keywords***


*** Test Cases ***
# CP001-1 Ingresar a la URL del Sistema.
#     Video Iniciar
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

# CP002-1 Ingresar a la URL del Sistema.
#     [Documentation]     Ingresar a la URL del sistema   (Caso CP002-Inicio de Sesión RL )
#     Esperar Iniciar ok      10
#     Dormir Todos  ${tiempo}
#     Abrir navegador    
#     Maximizar  
#     Obtener   //h1[contains(.,'Aviso de Movilización Tipo Inspección Federal')]  
#     Pantalla 
#     Cerrar 

# CP002-2 Ingresar usuario y contraseña "Erroneos" click Entrar.
#     [Documentation]     Ingresar usuario y contraseña Erroneos , dar click en el Botón "Entrar"   (CP002-Usuario Erroneo)  
#     Esperar Iniciar ok      10
#     Dormir Todos  ${tiempo}
#     Abrir navegador    
#     Maximizar  
#     Obtener   //h1[contains(.,'Aviso de Movilización Tipo Inspección Federal')]   
#     Texto    (//input[contains(@type,'text')])[1]   rgdur45sd  
#     Texto    (//input[@class='form-control'])[2]    sena2o20
#     Pantalla
#     Click     //input[@type='submit']
#     Scroll  0  100
#     Pantalla
#     Video Finalizar
#     Cerrar 

CP009-1 Aviso de Movilización Tipo Inspección Federal MAAMTIF
    [Documentation]     Inspección Federal MAAMTIF 
    Esperar Iniciar ok      10
    Dormir Todos  ${tiempo}
    Abrir navegador    
    Maximizar 
    Login uno  
    Login Tif
    Click    (//a[@href='#'])[1]
    Scroll  0  200
    Pantalla  ${dir}/AvisoTif.png
    Print  Solicitud Aviso ok
    Click    (//input[@type='submit'])[11]
    Scroll  0  200
    Pantalla  ${dir}/Estable_destino.png
    Print  Establecimiento destino OK
    SR  amtif:tipoPatron  Otro
    Pantalla  ${dir}/RadioOtro.png
    Print  Radio Otro OK
    SR  amtif:tipoPatron  TIF
    Pantalla  ${dir}/RadioTif.png
    Print  Radio TIF OK
    Texto Vacio     (//input[contains(@type,'text')])[1] 
    Click  (//input[contains(@type,'submit')])[1]
    Dormir  1
    Pantalla  ${dir}/BuscarTif_vacio.png  
    Texto    (//input[contains(@type,'text')])[1]   A-124
    Click  (//input[contains(@type,'submit')])[1]
    Scroll  0  200
    Dormir  1
    Pantalla  ${dir}/TifEncontrado.png
    Print  Tif Encontrado OK
    Click  (//input[contains(@type,'submit')])[14]
    Scroll  0  200
    Pantalla    ${dir}/Productos_lotes.png
    Print   Productos y Lotes OK OK
    Click  (//input[contains(@type,'checkbox')])[1]
    Scroll  0  400
    Dormir  2       #muy importante para el modal
    Click       //*[@id="amtif:btnAbrirAgregarProducto"]
    Dormir   1
    Pantalla  ${dir}/Agregar_Producto.png
    SLI  amtif:selProductos  3
    SLI   amtif:selProcesos     1
    SLI  amtif:selMotivos  2
    Texto   (//input[contains(@type,'text')])[1]  Demo Producto
    Texto  (//input[@type='text'])[2]  10
    SLI   amtif:selPresentaciones  3
    Pantalla    ${dir}/Producto_cargados.png
    Print  Productos Cargados Modal ok
    Click   (//input[contains(@type,'submit')])[3]
    Dormir  1
    Scroll  0   200
    Pantalla    ${dir}/Producto_add.png
    Print  Cargados Ok

    Scroll  0  600
    Dormir  2    #importante Boton
    Click  (//input[@type='submit'])[8]
    Texto    (//input[contains(@type,'text')])[3]  1234
    Texto  (//input[contains(@type,'text')])[4]     ${fecha_sacrificio}
    Texto  (//input[contains(@type,'text')])[5]  ${fecha_proceso}
    Texto  (//input[contains(@type,'text')])[6]  ${fecha_empaque}
    Pantalla  ${dir}/Agregar_lote.png
    Click  (//input[contains(@type,'submit')])[7]
    Scroll      0  700
    Dormir      1
    Pantalla  ${dir}/Lote_ok.png
    Print   Carga Lote ok
    Dormir   1

    Click   (//input[contains(@type,'submit')])[20]
    Pantalla  ${dir}/Trasporte_agregados.png
    Print   Pantalla transporte OK
    Dormir  2   #importante Boton
    Click  (//input[contains(@type,'submit')])[4]
    Pantalla  ${dir}/Modal_agregar_trasnporte.png
    Texto  (//input[contains(@type,'text')])[1]  1234567890
    Texto   (//input[contains(@type,'text')])[2]    12345678901234567892
    Click  (//input[contains(@type,'submit')])[3]
    Pantalla  ${dir}/Add_transporte.png
    Print   Se agrega el Transporte OK
    Dormir  1

    Click   (//input[contains(@type,'submit')])[16]
    





    

    






   



    Cerrar 




