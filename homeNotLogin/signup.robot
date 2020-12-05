*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/home


*** Test Cases ***
Signup
    Open Browser  ${my_url}  ${browser}
click signin
    Click button   name=signup
firstname
    Input text   input-134    new
familyname
    Input text   input-137    new
education
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-173-0
    Click Element    xpath=//*[@id="list-item-173-0"]
email
    Input text   input-149    new@gmail.com
confirm-email
    Input text   input-152    new@gmail.com
password
    Input text   input-155    123456
confirm-password
    Input text   input-158    123456