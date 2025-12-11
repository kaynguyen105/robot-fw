*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://demo.nopcommerce.com/


*** Test Cases ***
Open Example Website
    [Documentation]            This test opens example.com
    Open Browser               ${URL}                         chrome
    Maximize Browser Window
    Sleep                      15
    Close Browser
