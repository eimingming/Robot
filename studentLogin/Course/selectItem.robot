*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/


*** Test Cases ***
open 
    Open Browser  ${my_url}  ${browser}
click signin
    Click button   name=signin
input email
    Input text   name=email    aaa@gmail.com
input password
    Input text   name=password    123456
click signin
    Click Element   //*[@class="signInBtn"]
    sleep  2s
click course
    Click Element    //*[@name="Cal1"]
    sleep  2s
click buy
    Click Element    //*[@class="buttonContainer col"]
    sleep  2s
click shopee
    Click Element    //*[@class="v-image v-responsive iconBar theme--light"]
