***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Library     ScreenCapLibrary
Resource    ../recursos.robot


#robot -d result_uno  cp001_video.robot
#pabot --processes 10 --outputdir resultados_uno  test_uno/cp001_chrome*.robot

***Variables***
#${url}          https://adessistemas.senasica.gob.mx/amtif/
${url}          https://adessistemas.senasica.gob.mx/amtif/login.xhtml
${navegador}    chrome
${tiempo}   .1
${dir}      Img
${dir2}      Aviso
${fecha_sacrificio}     21/01/2020
${fecha_proceso}        21/01/2020
${fecha_empaque}        21/01/2020
${rfc}      vinr770919lc8
${pass}     Rorro131319+
${key}      C:\\ClavePrivada.key
${Cer}      C:\\vinr770919lc8.cer


***Keywords***


*** Test Cases ***
CP009 Aviso de Movilización Tipo Inspección Federal MAAMTIF
    [Documentation]     Inspección Federal MAAMTIF    
    Video Iniciar 
    Esperar Iniciar ok    5
    Dormir Todos  ${tiempo}
    Abrir navegador    
    Maximizar 
    Login uno  
    Login Tif
    Resultado   1   ${dir}/Resultado_uno.png  Resultado Ok con dormir
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
    Pantalla  ${dir}/transporte_lote.png
    Print  Numoer de Lote y Placas ok
    Dormir  4
    Click  (//input[contains(@type,'submit')])[12]
    Pantalla    ${dir}/Numero_folio.png
    Scroll  0  200
    Dormir  1
    Scroll  0   500
    Dormir  1
    Scroll  0  800
    Scroll  0  0
    Dormir  2    #importante botones
    Click   //a[contains(.,'Imprimir hoja')]
    Click  //a[contains(.,'Imprimir aviso')]
    Pantalla    ${dir}/Imprimir_hoja.png
    Print  Imprimir hoja y Aviso Ok
    Dormir  2
    Video Finalizar
    Cerrar 


CP052 Capturar Aviso Despojos y Harinas
    [Documentation]     Despojos y Harinas
    Video Iniciar
    Esperar Iniciar ok    25
    Dormir Todos  ${tiempo}
    Abrir navegador    
    Maximizar 
    Login uno  
    Login Tif
    Click    (//a[@href='#'])[2]
    Scroll  0  200
    Pantalla  ${dir2}/Aviso_despojo.png
    Scroll  0  200
    Print  Solicitud Aviso y despojo ok
    SLI  amtif:selTipoEst   2
    SLI     amtif:selTipoPatron    1
    Dormir  1
    Texto  (//input[@type='text'])[1]   COMERCIALIZADORA
    Dormir  5   #Botones
    Click  (//input[contains(@type,'submit')])[1]
    Scroll  0  400
    Pantalla    ${dir2}/Establecimiento_des.png
    Print  Establecimiento de Destino OK
    Dormir  2   #Boton necesario
    Click       (//a[@href='#'])[3]
    Pantalla    ${dir2}/Clik_chings.png
    Print   Clicks chings ok
    Dormir  3 
    Scroll  0  1200
    Obtener  //h2[@class='h2Small'][contains(.,'Establecimiento seleccionado')]    
    Pantalla    ${dir2}/Link_chings.png
    Print  Link chings ok
    Click  (//input[@type='submit'])[13]
    Dormir  2
    Click  (//input[contains(@type,'submit')])[4]
    Pantalla    ${dir2}/Agregar_producto.png
    Print  Agregar Producto ok
    SLI  amtif:selEspecies  2
    SLI  amtif:selProductos  1
    Texto  (//input[contains(@type,'text')])[1]  893
    Texto   (//input[contains(@type,'text')])[2]    23
    SLI  amtif:selPresentaciones  2
    SLI  amtif:selMotivos  1
    Pantalla  ${dir2}/Carga_productos.png
    Click  (//input[contains(@type,'submit')])[3]
    Scroll  0  200
    Pantalla  ${dir2}/Resultado_carga.png
    Print  Se agrega producto OK
    Click  (//input[@type='submit'])[16]
    Scroll  0  250
    Pantalla  ${dir2}/Transporte.png
    Print  Transporte OK
    Dormir  2    #boton
    Click  (//input[contains(@type,'submit')])[4]
    Texto  (//input[contains(@type,'text')])[1]     HGO768
    Texto  (//input[contains(@type,'text')])[2]  433234
    Pantalla    ${dir2}/Agregar_transporte.png
    Click  (//input[contains(@type,'submit')])[3]
    Scroll  0  250
    Pantalla  ${dir2}/Transportes_agregados.png
    Print  Transportes Agregados OK
    Dormir  2   #Botones
    Click  (//input[contains(@type,'submit')])[16]
    Scroll  0  0
    Dormir  2
    Pantalla    ${dir2}/Resumen.png
    Print  Resumen final
    Scroll  0  800
    Dormir  2
    Pantalla    ${dir2}/Firmar.png
    Click  (//input[contains(@type,'submit')])[14]
    Dormir  1
    Texto  (//input[contains(@type,'text')])[1]  ${rfc}
    Texto   (//input[contains(@class,'form-control')])[2]   ${pass}    
    Pantalla  ${dir2}/Firma_electronica.png
    Dormir  1
    Examinar     (//input[@type='file'])[1]      ${key}
    Examinar    (//input[@type='file'])[2]     ${Cer}
    Dormir  1
    Pantalla  ${dir2}/Carga_key.png
    Print  Carga de Key y Cer OK
    Click  (//input[@type='submit'])[12]
    Scroll  0  250
    Pantalla  ${dir2}/Folio.png
    Print  Firma Generada Correctamente OK
    Click   (//a[@href='#'])[2]  
    Pantalla  ${dir2}/Imprimir_generar_aviso.png
    Print   Generar Ok
    Dormir  20
    Click       //*[@id="amtif:btnObtenPDF"]
    Pantalla  ${dir2}/Imprimir_aviso.png
    Print  Ok se imprime

    Dormir  3
    Video Finalizar
    Cerrar 





