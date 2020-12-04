*** Setting ***
Library             SeleniumLibrary


*** Variable ***

*** Keywords ***

*** Test Cases ***
Open WebDriver
    open Browser  http://localhost:8080/home  chrome
    click button  name=signup