*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables/common_variables.robot
Resource    ../pages/LoginPage.resource
Resource    ../keywords/common_keyword.robot

*** Test Cases ***
User Can Login Successfully
    Go To URL    ${BASE_URL}
    Login With Invalid Account    ${invalid_username}    ${invalid_password}
