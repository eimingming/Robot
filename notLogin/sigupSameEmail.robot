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
Input firstname
    Input Text    firstname    jk
familyname
    Input Text    familyname    jk
education
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-189-1
    Click Element    xpath=//*[@id="list-item-189-1"]
email
    Input Text    email    testSTD@gmail.com
confirm-email
    Input Text    con-email    testSTD@gmail.com
password
    Input Text    password    123456
confirm-password
    Input Text    con-password    123456