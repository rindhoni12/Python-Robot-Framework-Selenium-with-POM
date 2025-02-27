*** Settings ***
Library         SeleniumLibrary
Resource        ../../configs/web_config.robot
Resource        ../locators/main_page.robot

*** Keywords ***

Open web browser
    Open Browser        ${URL}        ${BROWSER}
    Maximize Browser Window
    Sleep       5s

Close web browser
    Close Browser

User wait        [Arguments]        ${SECONDS}
    Sleep        ${SECONDS}    

User wait until found    [Arguments]        ${selector}
    Wait Until Element Is Visible     ${selector}    timeout=5s

