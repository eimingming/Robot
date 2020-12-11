*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/hometutor


*** Test Cases ***
Log in 
    Open Browser  ${my_url}  ${browser}
    Sleep   4s
    Click Button   //*[@id="signin"]
    Input text   email    tu@mail.com
    Input text   password    123456
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click All video
    sleep  4s
    Click Element   //*[@class="textDetailAll v-btn v-btn--flat v-btn--text theme--light v-size--default"]




