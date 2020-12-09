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
    Click button   name=password
    sleep  2s
Input Current Password 
    Input text   input-302    741852
Input New Password 
    Input text   input-305    123456
Input Con New Password 
    Input text   input-308    123456
    sleep  2s
click Edit Profile
    Click Button   //*[@ID="save"]
