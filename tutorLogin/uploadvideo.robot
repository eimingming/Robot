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
click upload
    sleep  4s
    Click button   name=upload
select subject
    sleep  2s
    Click Element    //*[@class="v-input__slot"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-195-0"]
write description
    Input text   input-188    เป็นบทเรียนที่สอนเนื้อหาเกี่ยวกับการ diff1
click submit
    Click Element    //*[@class="submitBtn"]

