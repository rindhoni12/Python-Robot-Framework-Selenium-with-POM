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

User redirect to Text Box sidebar
    Click Element    ${sidebar_text_box}
    Sleep       5s

User redirect to Check Box sidebar
    Click Element    ${sidebar_check_box}
    Sleep       5s

User redirect to Radio Button sidebar
    Click Element    ${sidebar_radio_button}
    Sleep       5s

User redirect to Web Tables sidebar
    Click Element    ${sidebar_web_tables}
    Sleep       5s

User redirect to Buttons sidebar
    Click Element    ${sidebar_buttons}
    Sleep       5s

User redirect to Links sidebar
    Click Element    ${sidebar_links}
    Sleep       5s