*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search On Google
    Open Browser    https://google.com    chrome
    Input Text      name:q    robot framework
    Press Keys      name:q    ENTER
    Page Should Contain    robotframework.org
    Close Browser
