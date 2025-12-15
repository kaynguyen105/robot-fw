*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables/LoginPageLocator.resource
Resource    ../resources/variables/common_variables.robot
Resource    ../keywords/common_keyword.robot

*** Keywords ***
Login With Valid Account
    [Arguments]    ${valid_username}    ${valid_password}
    Input Text On Page    ${input_username}    ${valid_username}
    Input Text On Page    ${input_password}    ${valid_password}
    Click Element On Page    ${btn_login}

Login With Invalid Account
    [Arguments]    ${invalid_username}    ${invalid_password}
    Input Text On Page    ${input_username}    ${invalid_username}
    Input Text On Page    ${input_password}    ${invalid_password}
    Click Element On Page    ${btn_login}
