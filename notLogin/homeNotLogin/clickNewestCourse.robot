*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/home


*** Test Cases ***
open
    Open Browser  ${my_url}  ${browser}
click newest course
    Sleep  4s
    Click Element    //*[@id="Newest"]
click buy
    Sleep  4s
    Click Element    //*[@class="buttonContainer col"]