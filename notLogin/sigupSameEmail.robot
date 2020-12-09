*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/


*** Test Cases ***
open 
    Open Browser  ${my_url}  ${browser}
click signin
    sleep  2s
    Click button   name=signup
Input Text
    Input Text    input-156    jk
    Input Text    input-159    jk
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-194-1
    Click Element    xpath=//*[@id="list-item-194-1"]
    Input Text    input-171    testSTD@gmail.com
    Input Text    input-174    testSTD@gmail.com
    Input Text    input-177    123456
    Input Text    input-180    123456