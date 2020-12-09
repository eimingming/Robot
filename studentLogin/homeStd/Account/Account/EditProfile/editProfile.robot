*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${my_url}           http://localhost:8080/


*** Test Cases ***
open 
    Open Browser  ${my_url}  ${browser}
click signin
    sleep  2s
    Click button   name=signin
input email
    Input text   name=email    testSTD@gmail.com
input password
    Input text   name=password    741852
click signin
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click Account
    sleep  4s
    Click Element   xpath=//*[@id="account"]
show profile
    sleep  2s
    Click Element    xpath=//*[@id="list-item-279"]
show profile
    sleep  2s
    Click button   name=profile
show profile
    sleep  4s
    Click button   name=editProfile
change Input FirstName
    Input text   input-307    jk
change Input LastName
    Input text   input-310    jeon
    sleep  4s
change Sex
    Click Element    //*[@id="sex"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-333-0"]
    sleep  2s
change Education
    Click Element    //*[@id="education"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-339-2"]
    sleep  2s
click Edit Profile
    Click Button   //*[@id="save"]

