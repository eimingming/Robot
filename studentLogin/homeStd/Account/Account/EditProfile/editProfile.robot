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
    Click button   id=signin
input email
    Input text   id=email    testSTD@gmail.com
input password
    Input text   id=password    741852
click signin
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click Account
    sleep  4s
    Click Element   xpath=//*[@id="account"]
show profile
    sleep  4s
    Click Element    xpath=//*[@id="list-item-270"]
show profile
    sleep  4s
    Click button   id=profile
show profile
    sleep  4s
    Click button   id=editProfile
change Input FirstName
    sleep  2s
    Input text   id=FirstName    jk
change Input LastName
    Input text   id=FamilyName    jeon
    sleep  4s
change Sex
    Click Element    //*[@id="sex"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-324-0"]
    sleep  2s
change Education
    Click Element    //*[@id="education"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-330-1"]
    sleep  2s
click Edit Profile
    Click Button   //*[@id="save"]

