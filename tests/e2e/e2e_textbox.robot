*** Settings ***
Resource        ../../resources/keywords/general_keyword.robot
Resource        ../../resources/locators/text_box/text_box_page.robot
       
Test Setup      Open web browser
Test Teardown   Close web browser


*** Test Cases ***
Scenario: Verify user can fill all text Box field
    [Tags]  @e2e_fill_textbox
    Given User redirect to Text Box sidebar
    When User wait    5s
    And Input Text    ${textbox_fullname_textbox}    Ahmad Rindhoni
    And Input Text    ${textbox_email_textbox}    rakyat@gmail.com
    And Input Text    ${textbox_currentaddress_textbox}    duren tiga jakarta selatan
    And Input Text    ${textbox_permanentaddress_textbox}    pati jawa tengah
    And Click Element    ${textbox_submit_button}
    And User wait    5s
    Then Element Should Be Visible    ${output_fullname_label}
    Then Element Should Be Visible    ${output_email_label}
    Then Element Should Be Visible    ${output_currentaddress_label}
    Then Element Should Be Visible    ${output_permanentaddress_label}