*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://iframetester.com/

*** Test Cases ***
Open Example Website
    [Documentation]    This test opens rahulshettyacademy.com
    Open Browser    ${URL}    chrome    
    Input Text    xpath=//input[@id='url-search']    https://katalon-demo-cura.herokuapp.com/#appointment
    Click Button    xpath=//button[text()='Render iframe']
    Wait Until Element Is Visible    xpath=//iframe[@id='iframe-window']    10s
    Select Frame    xpath=//iframe[@id='iframe-window']
    
    # Cuộn đến phần tử trước khi nhấp
    Execute Javascript    document.evaluate("//a[text()='Make Appointment']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView();
    Wait Until Element Is Visible    xpath=//a[text()='Make Appointment']    timeout=10
    Click Element    xpath=//a[text()='Make Appointment']
    Wait Until Element Is Visible    xpath=//h2[text()='Login']    10s
    Input Text    id=txt-username    John Doe
    Input Text    id=txt-password    ThisIsNotAPassword
    Clear Element Text    id=txt-username
    Clear Element Text    id=txt-password
    Input Text    id=txt-username    John Doe
    Input Text    id=txt-password    ThisIsNotAPassword
    Click Button    xpath=//button[@type='submit']
    Wait Until Element Is Visible    xpath=//h3[text()='We Care About Your Health']    10s
    Sleep    15