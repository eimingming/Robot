*** Setting ***
Library             SeleniumLibrary


*** Variable ***

*** Keywords ***

*** Test Cases ***
Open WebDriver
    open Browser  http://localhost:8080/home  chrome
    click button  name=signup


Input Text
    Input Text    input-134    jk
    Input Text    input-137    jk
    Click Element    //*[@class="v-select__selections"]
    Wait Until Element Is Visible    list-item-87-2
    Click Element    xpath=//*[@id="list-item-87-2"]
    Input Text    input-141    test_robot@gmail.com
    Input Text    input-152    test_robot@gmail.com
    Input Text    input-155    123456
    Input Text    input-158    123456