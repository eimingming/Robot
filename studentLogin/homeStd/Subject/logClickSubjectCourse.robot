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
    sleep  6s
click subject
    Click Element    //*[@class="ma-10 subjectCard v-card v-card--link v-sheet theme--light elevation-12"]
    sleep  4s
click subject course
    Click Element    //*[@class="cardCourseSmall v-card v-card--link v-sheet theme--light elevation-12"]
