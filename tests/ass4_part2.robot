*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot


*** Variables ***
${URL}    http://iframetester.com/

${FILE1}=    /Users/kimconu/Documents/robot-fw/resources/360_F_266083810_zGmRdMbOVoIa9kRoe9ivR3KETGxJNg6C.jpg
${FILE2}=    /Users/kimconu/Documents/robot-fw/resources/long-doc.txt
${FILE3}=    /Users/kimconu/Documents/robot-fw/resources/sample-local-pdf.pdf
${FILE4}=    /Users/kimconu/Documents/robot-fw/resources/YHoloqsDDv.gif


*** Test Cases ***
Open Example Website
    [Documentation]            This test opens rahulshettyacademy.com
    Open Browser    ${URL}    chrome    
    Input Text    xpath=//input[@id='url-search']    https://testtrack.org/file-upload-demo
    click button    xpath=//button[text()='Render iframe']
      # ---- FIX LỚN: scroll iframe trước khi select ----
    Wait Until Element Is Visible    xpath=//iframe[@id='iframe-window']    10s
    Scroll Element Into View    xpath=//iframe[@id='iframe-window']
    Sleep    0.5s
    Select Frame    xpath=//iframe[@id='iframe-window']
    # elements inside iframe
    wait until element is visible    xpath=//h1[text()='FILE UPLOAD DEMO']    10s
     # Upload 4 files
    Scroll Element Into View    id=single-file
    Choose File    id=single-file    ${FILE1}
    Check Upload Popup
    # Upload multiple files (SEPARATOR=\n)
    ${MULTI}=    Catenate    SEPARATOR=\n    ${FILE1}    ${FILE2}    ${FILE3}    ${FILE4}
    Choose File    id=multiple-files    ${MULTI}
    Check Upload Popup
    Choose File    id=image-only    ${FILE4}
    Check Upload Popup
    Choose File    id=document-only    ${FILE2}
    Check Upload Popup
    Scroll Element Into View    xpath=//button[text()='INITIATE SECURE UPLOAD']
    click button    xpath=//button[text()='INITIATE SECURE UPLOAD']
    Sleep                      15
