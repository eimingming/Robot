*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/home


*** Test Cases ***
open 
    Open Browser  ${my_url}  ${browser}
click signin  
    Sleep   4s
    Click Button   //*[@id="signin"]
input email
    Input text   email    aaa@gmail.com
input password
    Input text   password    741852
click signin
    Click Element   //*[@class="signInBtn"]

