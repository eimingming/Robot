*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/home


*** Test Cases ***
open  
    Open Browser  ${my_url}  ${browser}
click subject
    sleep  4s
    Click Element    //*[@name="Subject"]
