*** Setting ***
Library             SeleniumLibrary

*** Variable ***

*** Keywords ***

*** Test Cases ***
Open WebDriver
    open Browser  http://localhost:8080/home   chrome
กด
    Click Element    //*[@class="courseCard v-card v-card--link v-sheet theme--light elevation-16"]
