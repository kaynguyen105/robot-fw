*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables/LoginPageLocator.resource
Resource    ../resources/variables/common_variables.robot
Resource    ../keywords/common_keyword.robot

*** Keywords ***
Input Username
    [Arguments]    ${VALID_USERNAME}
    Wait Until Element Is Visible    ${LOGIN_USERNAME_INPUT}    10s
    Input Text    ${LOGIN_USERNAME_INPUT}    ${VALID_USERNAME}

Input Password
    [Arguments]    ${VALID_PASSWORD}
    Wait Until Element Is Visible    ${LOGIN_PASSWORD_INPUT}    10s
    Input Text    ${LOGIN_PASSWORD_INPUT}    ${VALID_PASSWORD}

Click Login
    [Arguments]    ${LOGIN_SUBMIT_BUTTON}
    Wait Until Element Is Visible    ${LOGIN_SUBMIT_BUTTON}    10s
    Click Button    ${LOGIN_SUBMIT_BUTTON}

Login With Valid Account
    [Arguments]    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Input Username    ${VALID_USERNAME}
    Input Password    ${VALID_PASSWORD}
    Click Login    ${LOGIN_SUBMIT_BUTTON}
