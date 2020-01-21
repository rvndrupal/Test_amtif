***Settings***
Library     SeleniumLibrary
Library     String

Login uno
    Texto    (//input[contains(@type,'text')])[1]   erojasc14760  
    Texto    (//input[@class='form-control'])[2]    sena2o14
    Click     //input[@type='submit']

Login Tif
    Texto       (//input[contains(@id,'tif')])[1]     A-124
    Texto       //input[contains(@type,'password')]    sen962fitA-124
    Click       (//input[contains(@type,'submit')])[2]
    
    