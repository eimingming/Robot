*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/hometutor


*** Test Cases ***
Log in 
    Open Browser  ${my_url}  ${browser}
    Sleep   4s
    Click Button   //*[@id="signin"]
    Input text   email    aaatutor@gmail.com
    Input text   password    123456
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click human
    sleep  4s
    Click Element   xpath=//*[@id="account"]
click account / show profile
    sleep  2s
    Click Element    //*[@id="list-item-176"]

