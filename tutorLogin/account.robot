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
click account /show profile
    sleep  2s
    Click Element    xpath=//*[@id="list-item-169"]
click account for change pw
    sleep  2s
    Click button   name=resetpw
input current password
    sleep  2s
    Input text    input-191    123456
input new password
    Input text    input-194    1234567
    Input text    input-197    1234567
click save
    Click button   name=save
