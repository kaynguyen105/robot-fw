*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://rahulshettyacademy.com/seleniumPractise/#/


*** Test Cases ***
Open Example Website
    [Documentation]            This test opens rahulshettyacademy.com
    Open Browser               ${URL}                         chrome
    Maximize Browser Window
    Input Text               css=input.search-keyword          Cucumber
    Click Button    xpath=//button[text()='ADD TO CART']
    wait until element is visible    xpath=//img[@alt='Cucumber - 1 Kg']    10s
    Click element    xpath=//img[@alt='Cart']
    Click button    xpath=//button[text()='PROCEED TO CHECKOUT']
    #this part need to wait for the promo code input to be visible
    Wait Until Page Contains Element    xpath=//input[@placeholder='Enter promo code']    10s
    Input Text    xpath=//input[@placeholder='Enter promo code']        rahulshettyacademy
    Click Button    xpath=//button[text()='Apply']
    wait until element is visible    xpath=//span[text()='Code applied ..!']    10s
    Click Button    xpath=//button[text()='Place Order']
    #this part need to wait for the promo code input to be visible
    Wait Until Page Contains Element    xpath=//select    10s
    Select From List By Value    xpath=//select    India
    Click Element    xpath=//input[@type='checkbox']
    Click Button    xpath=//button[text()='Proceed']
    Wait Until Page Contains Element    xpath=//span[text()='Thank you, your order has been placed successfully']    10s
    Sleep                      15
