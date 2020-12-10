*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/home


*** Test Cases ***
Signup
    Open Browser  ${my_url}  ${browser}
click signin
    Sleep   4s
    Click Button   //*[@id="signup"]
#select type
#    select radio button     radio-120     a
firstname
    Input text   firstname    new
familyname
    Input text   familyname    new
education
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-189-0
    Click Element    xpath=//*[@id="list-item-189-0"]
email
    Input text   email    new@gmail.com
confirm-email
    Input text   con-email    new@gmail.com
password
    Input text   password    123456
confirm-password
    Input text   con-password    123456
#select checkbox