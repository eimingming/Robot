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
click Account
    sleep  4s
    Click button   name=human
show profile
    sleep  2s
    Click Element    xpath=//*[@id="list-item-169"]
click edit profile
    sleep  2s
    Click button   name=editprofile
edit name
    Input text   input-196    TEST
click save
    sleep  2s
    Click button   name=save
    