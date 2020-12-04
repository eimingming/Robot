*** Setting ***
Library             SeleniumLibrary

*** Variable ***

*** Keywords ***

*** Test Cases ***
Open WebDriver
    open Browser  http://localhost:8080/login   chrome
Input Text
    Input Text  name=email  test_robot@gmail.com
    Input Text  name=password  123456
กด
    Click Button  class=signInBtn
