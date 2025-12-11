*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    StringUtils.py

*** Variables ***
${URL}    http://live.techpanda.org/index.php/mobile.html


*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    chrome  
    Wait Until Element Is Visible    xpath=//img[@alt="Magento Commerce"]    10s

    # Sort by price
    Select From List By Label    xpath=//select[@title='Sort By']    Price

    # Verify sort
    Verify Price Sorting

    Sleep    5


*** Keywords ***
Verify Price Sorting
    @{price_elements}=    Get WebElements    css=.price
    @{price_values}=      Create List

    FOR    ${el}    IN    @{price_elements}
        ${txt}=    Get Text    ${el}
        ${clean}=    Clean Price    ${txt}
        ${num}=    Convert To Number    ${clean}
        Call Method    ${price_values}    append    ${num}
    END

    Log To Console    Actual list: ${price_values}

    @{sorted}=    Copy List    ${price_values}
    ${sorted}=    Evaluate    sorted(${price_values})

    Log To Console    Sorted list: ${sorted}

    Collections.Lists Should Be Equal    ${price_values}    ${sorted}

