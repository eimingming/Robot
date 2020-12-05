*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/home


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

