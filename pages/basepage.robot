*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Click Element On Page
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}

Input Text On Page
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10s
    Input Text    ${locator}    ${text}
