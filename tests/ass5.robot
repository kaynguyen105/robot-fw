*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://live.techpanda.org/index.php/mobile.html


*** Test Cases ***
Open Example Website
    [Documentation]            This test opens rahulshettyacademy.com
    Open Browser    ${URL}    chrome  
    wait until element is visible    xpath=//img[@alt="Magento Commerce"]    10s
    click element    xpath=//span[text()='Account']
    click element    xpath=//a[text()='Log In']
    element should Contain   xpath=//h1     LOGIN
    click element    xpath=//a[@title='Create an Account']
    wait until element is visible    xpath=//h1[text()='Create an Account']    10s
    ${el}=    Get WebElement    xpath=//h1[text()='Create an Account']
    ${font}=    Call Method    ${el}    value_of_css_property    font-size
    Should Be Equal    ${font}    24px
    ${el2}=    Get WebElement    xpath=//p[@class='required']
    ${color}=    Call Method    ${el2}    value_of_css_property    color
    Should Be Equal    ${color}    rgba(223, 40, 10, 1)
    Input Text    id=firstname    Kay
    input Text    id=middlename     Ne
    input Text    id=lastname    He
    input Text    id=email_address  kay@gmail.com
    input Text    id=password    kay12345
    input Text    id=confirmation    kay12345
    click element    xpath=//input[@type='checkbox']
    click button    xpath=//button[@title='Register']
    Wait Until Page Contains Element    xpath=//li[@class='success-msg']
    Sleep                      15
