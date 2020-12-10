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
    Input text   id=email    aaatutor@gmail.com
    Input text   id=password    123456
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click human
    sleep  4s
    Click Element   xpath=//*[@id="account"]
click account / show profile
    sleep  2s
    Click Element    //*[@id="list-item-176"]
click edit profile
    sleep  2s
    Click Button   //*[@id="editprofile"]
delete old data
    sleep  2s
    Clear Element Text    firstName
#    Press Keys    firstName    DELETE
edit firstName
    sleep  2s
    Input text   firstName    TEST
edit familyName
    sleep  2s
    Input text   familyName    TEST
change Sex
    sleep  2s
    Click Element    //*[@id="sex"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-232-0"]
    sleep  2s
change Education
    Click Element    //*[@id="education"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-238-3"]
    sleep  2s
edit bio
    sleep  2s
    Input text   bio    Ttttttt
click save
    sleep  2s
    Click Button   //*[@id="save"]

