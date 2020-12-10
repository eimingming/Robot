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
    sleep  4s
click shoping
    Click Element    //*[@ID="basket"]
    sleep  6s
click comfirm order page SelectItem
    Click button    class=bottonCom
    sleep  6s
click next page invoice
    Click button    id=btnNext
    sleep  10s
click cancle to detailpayment
    Click button    id=btnCancle
