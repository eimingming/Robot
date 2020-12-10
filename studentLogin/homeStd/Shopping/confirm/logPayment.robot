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
    Click button   id=signin
input email
    Input text   id=email    testSTD@gmail.com
input password
    Input text   id=password    741852
click signin
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click course
    Click Element    //*[@id="Cal1"]
    sleep  4s
click buy
    Click Element    //*[@class="buttonContainer col"]
    sleep  2s
click shoping
    Click Element    //*[@ID="basket"]
    sleep  4s
click comfirm
    Click button    class=bottonCom
    sleep  6s
click next
    Click button    id=btnNext
    sleep  10s
click next
    Click button    id=btnNext
    sleep  4s
Transfer To
    Click Element    //*[@id="bank"]
    sleep  6s
    Click Element    xpath=//*[@id="list-item-366-0"]
    sleep  4s
Transfer To
    Click Element    //*[@id="yourbank"]
    sleep  6s
    Click Element    xpath=//*[@id="list-item-376-0"]
    sleep  4s
Input amount
    Input text    id=AmountTransfer    50
    sleep  4s
Click Button
    Click button    class=text-none