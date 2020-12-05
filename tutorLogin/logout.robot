*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/hometutor


*** Test Cases ***
Log in 
    Open Browser  ${my_url}  ${browser}
    Click button   name=signin
    Input text   name=email    aaatutor@gmail.com
    Input text   name=password    123456
    Click Element   //*[@class="signInBtn"]
click human
    sleep  4s
    Click button   name=human
click Logout
    sleep  4s
    Click Element    xpath=//*[@id="list-item-171"]
