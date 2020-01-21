***Settings***
Library     SeleniumLibrary
Library     String

***Variables***
#${navegador}    chrome
#${url}         http://automationpractice.com/index.php
#${url}         https://www.amazon.com.mx/?ref=icp_country_us_t1
#${url}          http://www.practiceselenium.com/practice-form.html
#${url}          http://demowebshop.tricentis.com/register
#C:/Python/robotframework/amtif/test_uno/result_uno/result_uno/img/Captura.png
${dir}      Img


***Keywords***
Abrir navegador
    Open Browser    ${url}   ${navegador}

Abrir navegador2
    Open Browser    ${url2}   ${navegador}
   

Cerrar
    Close Browser

Ventana
    [Arguments]     ${arg1}     ${arg2}
    Set Window Size     ${arg1}     ${arg2}

Maximizar
    Maximize Browser Window

Tiempo
    [Arguments]     ${arg1}     
    Set Selenium Speed     ${arg1} seconds


Focus 
    [Arguments]    ${arg1}    
    Set Focus To Element    xpath=${arg1}

Click
    [Arguments]    ${arg1}
    Click Element   xpath=${arg1}

Click id
    [Arguments]    ${arg1}
    Click Element   id=${arg1}


Click IE
    [Arguments]    ${arg1}
    Click Link      id=${arg1}

Limpiar
    [Arguments]    ${arg1}
    Clear Element Text   xpath=${arg1}

Visible
    [Arguments]    ${arg1}
    Wait Until Element is Visible   xpath=${arg1}

Visible2
    [Arguments]    ${arg1}  
    Element Should Be Visible   xpath=${arg1}    

NoVisible
    [Arguments]    ${arg1}
    Element Should Not Be Visible   xpath=${arg1}

Texto
    [Arguments]    ${arg1}  ${arg2}
    Input Text   xpath=${arg1}    ${arg2}

Texto Vacio
    [Arguments]    ${arg1}  
    Input Text   xpath=${arg1}    ""


Obtener
    [Arguments]    ${arg1}  
    Get Value   xpath=${arg1}    

Obtener dos
    [Arguments]    ${arg1}  
    Wait Until Page Contains  Hello   xpath=${arg1}    


Titulo
    [Arguments]    ${arg1}
    Title Should Be    xpath=${arg1} 

Dormir
    [Arguments]    ${arg1}
    sleep       ${arg1} 

Dormir Todos
    [Arguments]    ${arg1}
    set selenium speed    ${arg1} seconds

Print
    [Arguments]    ${arg1}
    log to console    ${arg1} 

Esperar Objeto
    [Arguments]    ${arg1}
    Wait Until Page Contains    ${arg1} 

Esperar Iniciar ok
    [Arguments]    ${arg1}
    Set Selenium Timeout    ${arg1} seconds

Alerta ok
    #[Arguments]   ${arg1}
    Handle Alert    accept

Alerta texto
    [Arguments]   ${arg1}
    Alert Should Be Present    ${arg1}

    

Alerta cancel
    #[Arguments]   ${arg1}
    Handle Alert    dismiss

Sel Window
    [Arguments]   ${arg1}
    Select Window    ${arg1}

Switch Ventana
    [Arguments]     ${arg1}
    Switch Browser      ${arg1}

Obtener Titulo
    Get Title    

Pantalla
    [Arguments]     ${arg1}
    Capture Page Screenshot     ${arg1}


Login uno
    Texto    (//input[contains(@type,'text')])[1]   erojasc14760  
    Texto    (//input[@class='form-control'])[2]    sena2o14
    Pantalla     ${dir}/Loguno.png 
    Click     //input[@type='submit']

Login Tif
    Texto       (//input[contains(@id,'tif')])[1]     A-124
    Texto       //input[contains(@type,'password')]    sen962fitA-124
    Pantalla         ${dir}/Tif.png
    Click       (//input[contains(@type,'submit')])[2]
    
    



Scroll
    [Arguments]   ${arg1}   ${arg2}
    execute javascript      window.scrollTo(${arg1},${arg2})

Examinar
    [Arguments]   ${arg1}   ${arg2}
    Choose File     ${arg1}     ${arg2}

    


Video Iniciar
    Start Video Recording

Video Finalizar
    Stop Video Recording


        

     
    

# If
#     [Arguments]     ${arg1}     ${arg2}     ${arg3}
#     Run Keyword if      '${arg1}'=='${arg2}'  ${arg3}

#Opciones del Raton
##################################
MO
    [Arguments]    ${arg1}
    Mouse Over   xpath=${arg1}

   
###################################


#################################
#Select radio
SR
    [Arguments]    ${arg1}  ${arg2}
    Select Radio Button   ${arg1}   ${arg2}

#Select checkbox
SC
    [Arguments]    ${arg1}  
    Select Checkbox	   ${arg1}  

USC
    [Arguments]    ${arg1}  
    Unselect Checkbox   ${arg1}  

#Select lista
SLI
    [Arguments]    ${arg1}  ${arg2}
    Select From List By Index   ${arg1}     ${arg2}
SLL
    [Arguments]    ${arg1}  ${arg2}
    Select From List By Label   ${arg1}    ${arg2}


    
#################################

SF
    #SELECCIONAR UN IFRAME
    [Arguments]    ${arg1}
    Select Frame   ${arg1}

USF
    #DESELECCIONAR IFRAME ES IMPORTANTE PARA CIERRE
    Unselect Frame

Comparar
    #Compara dos valores  que se pasan 
    [Arguments]    ${arg1}  ${arg2}
    Element Text Should Be   ${arg1}  ${arg2}



    


######################
# checar el de tiempo  Wait Until Keyword Succeeds 
    