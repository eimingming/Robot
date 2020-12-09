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
    Click button   name=signin
input email
    Input text   name=email    testSTD@gmail.com
input password
    Input text   name=password    741852
click signin
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click basic use
    Click button   name=basicuse
    Click button   name=basicuse
Close Brower   
    sleep  4s
    Close Browser

