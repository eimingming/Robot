*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://192.168.137.76:8080/home


*** Test Cases ***
open
    Open Browser  ${my_url}  ${browser}
click basic use
    Click Element    //*[@name="Cal1"]
