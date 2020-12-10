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
    Click button   id=signup
Input Text
    Input Text    firstname    jk
    Input Text    familyname    jk
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-189-1
    Click Element    xpath=//*[@id="list-item-189-1"]
    Input Text    email    aa11@gmail.com
    Input Text    con-email    bb22@gmail.com
    Input Text    password    123456
    Input Text    con-password    123456