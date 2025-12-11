*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://live.techpanda.org/index.php/mobile.html 


*** Test Cases ***
Open Example Website
    [Documentation]            This test opens rahulshettyacademy.com
    Open Browser    ${URL}    chrome    browser_options=--allow-running-insecure-content --ignore-certificate-errors --disable-web-security
    Click element    xpath=//span[text()='Account']
    Click element    xpath=//a[text()='Log In']
    Click element    xpath=//a[@title='Create an Account']
    Input Text    id=firstname    John
    input Text    id=middlename     Doe
    input Text    id=lastname    Smith
    clear element text    id=firstname
    clear element text    id=middlename
    clear element text    id=lastname
    Input Text    id=firstname    Kay
    input Text    id=middlename     Ne
    input Text    id=lastname    He
    input Text    id=email_address  kay@gmail.com
    input Text    id=password    kay12345
    input Text    id=confirmation    kay12345
    click element    xpath=//input[@type='checkbox']
    click button    xpath=//button[@title='Register']
    Wait Until Page Contains Element    xpath=//li[@class='success-msg']
    click element    xpath=//a[text()='Address Book']
    wait until element is visible    xpath=//h2[text()='Contact Information']    10s
    input Text    id=company    CMC global
    input Text    id=telephone    0987665743
    input Text    id=street_1    New york
    input Text    id=city    New york
    select From List By Value    id=region_id    Alaska
    input Text    id=zip    10001
    select From List By Value    id=country    United States
    click button    xpath=//button[@title='Save Address']
    Wait Until Page Contains Element    xpath=//li[@class='success-msg']
    Sleep                      15
