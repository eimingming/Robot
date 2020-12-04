*** Setting ***
Library             SeleniumLibrary


*** Variable ***

*** Keywords ***

*** Test Cases ***
Open WebDriver
    open Browser  http://localhost:8080/signup  chrome
Input Text
    Input Text    input-35    jk
    Input Text    input-38    jk
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-87-2
    Click Element    xpath=//*[@id="list-item-87-2"]
    Input Text    input-50    test_robot@gmail.com
    Input Text    input-53    test_robot@gmail.com
    Input Text    input-56    123456
    Input Text    input-59    123456
    select checkbox    name=argee
