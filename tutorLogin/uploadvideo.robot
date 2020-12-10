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
    Input text   email    aaatutor@gmail.com
    Input text   password    123456
    Click Element   //*[@class="signInBtn"]
    sleep  4s
click upload
    sleep  4s
    Click Button   //*[@id="upload"]
select subject
    sleep  8s
    Click Element    //*[@id="subject"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-201-2"]
    sleep  2s
select course
    sleep  2s
    Click Element    //*[@id="course"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-209-3"]
    sleep  2s
select lesson
    sleep  2s
    Click Element    //*[@id="lesson"]
    sleep  2s
    Click Element    xpath=//*[@id="list-item-218-3"]
    sleep  2s
write description
    Input text   description    เป็นบทเรียนที่สอนเนื้อหาเกี่ยวกับการ diff1
click submit
    Click Element    //*[@class="submitBtn"]
