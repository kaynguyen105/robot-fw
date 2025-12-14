*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables/common_variables.robot

*** Keywords ***
Go To URL
    [Arguments]    ${BASE_URL}    ${BROWSER}=chrome
    Open Browser    ${BASE_URL}   ${BROWSER}    browser_options=--allow-running-insecure-content --ignore-certificate-errors --disable-web-security
Click Element On Page
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}

Input Text On Page
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10s
    Input Text    ${locator}    ${text}
