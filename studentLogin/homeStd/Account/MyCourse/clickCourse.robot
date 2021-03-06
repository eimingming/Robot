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
click My course
    sleep  4s
    Click Element    xpath=//*[@id="list-item-272"]
Click Course
    sleep  4s
    Click Element    xpath=//*[@class="cardCourseSmall v-card v-card--link v-sheet theme--light elevation-12"]