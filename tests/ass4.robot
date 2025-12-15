*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://iframetester.com/


*** Test Cases ***
Open Example Website
    [Documentation]            This test opens rahulshettyacademy.com
    Open Browser    ${URL}    chrome    
    Maximize Browser Window
    Input Text    xpath=//input[@id='url-search']    https://katalon-demo-cura.herokuapp.com/#appointment
    click button    xpath=//button[text()='Render iframe']
     # switch to iframe
    Wait Until Element Is Visible    xpath=//iframe[@id='iframe-window']    10s
    Select Frame    xpath=//iframe[@id='iframe-window']
    # elements inside iframe
    Wait Until Element Is visible    xpath=//a[text()='Make Appointment']    timeout=10
    click element   xpath=//a[text()='Make Appointment']
    wait until element is visible    xpath=//h2[text()='Login']    10s
    input Text    id=txt-username    John Doee
    input Text    id=txt-password    ThisIsNotAPasswordd
    clear element text    id=txt-username
    clear element text    id=txt-password
    input Text    id=txt-username    John Doe
    input Text    id=txt-password    ThisIsNotAPassword
    wait until element is visible   id=btn-login    10s
    click button    id=btn-login
    wait until element is visible    xpath=//h3[text()='We Care About Your Health']    10s
    Sleep                      15
