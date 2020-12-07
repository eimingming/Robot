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
    sleep  4s
click course
    Click Element    //*[@name="Cal1"]
    sleep  4s
click buy
    Click Element    //*[@class="buttonContainer col"]
    sleep  4s
click shoping
    Click Element    //*[@class="v-image v-responsive iconBar theme--light"]
    sleep  4s
click comfirm
    Click button    class=bottonCom
    sleep  4s
click next
    Click button    name=btnNext
    sleep  4s
click cencle
    Click button    name=btnCancel
