*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/hometutor


*** Test Cases ***
open 
    Open Browser  ${my_url}  ${browser}
click signin  
    Sleep   4s
    Click Button   //*[@id="signin"]
input email
    Input text   email    aaatutor@gmail.com
input password
    Input text   password    123456
click signin
    Click Element   //*[@class="signInBtn"]