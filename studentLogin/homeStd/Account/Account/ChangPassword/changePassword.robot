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
    sleep  2s
    Click Element    xpath=//*[@id="list-item-270"]
show profile
    sleep  2s
    Click button   id=profile
show profile
    sleep  4s
    Click button   id=password
    sleep  2s
Input Current Password 
    Input text   id=currentPassword    741852
Input New Password 
    Input text   id=newPassword    741852
Input Con New Password 
    Input text   id=confirNewPassword    741852
    sleep  2s
click Edit Profile
    Click Button   //*[@ID="save"]
