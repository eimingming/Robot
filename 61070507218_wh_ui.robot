*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${browser}          chrome
${google_url}       http://the-internet.herokuapp.com/login
${username_fail_text}      eiming 
${password_fail_text}      eiming
${username_pass_text}      tomsmith 
${password_pass_text}      SuperSecretPassword!


*** Test Cases ***
TC_001 Login fail test
    Open Browser  ${google_url}  ${browser}
    Input text  name=username   ${username_fail_text}
    Input text  name=password   ${password_fail_text}
    Submit form
    Element Should Contain     //*[@id="flash"]  Your username is invalid
    Close Browser

TC_002 Login pass test
    Open Browser  ${google_url}  ${browser}
    Input text  name=username   ${username_pass_text}
    Input text  name=password   ${password_pass_text}
    Submit form
    Element Should Contain      //*[@id="flash"]  You logged into a secure area!
   



