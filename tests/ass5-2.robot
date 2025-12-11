*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../resources/price_keywords.py    WITH NAME    Price

*** Variables ***
${URL}    http://live.techpanda.org/index.php/mobile.html


*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    chrome  
    Wait Until Element Is Visible    xpath=//img[@alt="Magento Commerce"]    10s

    # Sort by price
    Select From List By Label    xpath=//select[@title='Sort By']    Price

    ${elements}=    Get WebElements    xpath=//span[@class='price']
    ${prices}=      Price.Convert Prices To List    ${elements}
    Price.Verify Sorted Ascending    ${prices}

    Sleep    5
