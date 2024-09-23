*** Settings ***
Library         SeleniumLibrary
Resource        ../../resources/locators/text_box/text_box_page.robot
Resource        ../../resources/keywords/general_keyword.robot

Test Setup      Open web browser
Test Teardown   Close web browser

*** Test Cases ***
Scenario: Verify UI Text Box Page
    [Tags]  @ui_textbox_page
    Given User redirect to Text Box sidebar
    WHen User wait    5s
    Then Element Should Be Visible    ${textbox_main_header}
    Then Element Should Be Visible    ${textbox_fullname_label}
    Then Element Should Be Visible    ${textbox_email_label}
    Then Element Should Be Visible    ${textbox_currentaddress_label}
    Then Element Should Be Visible    ${textbox_permanentaddress_label}
    Then Element Should Be Visible    ${textbox_fullname_textbox}
    Then Element Should Be Visible    ${textbox_email_textbox}
    Then Element Should Be Visible    ${textbox_currentaddress_textbox}
    Then Element Should Be Visible    ${textbox_permanentaddress_textbox}
    Then Element Should Be Visible    ${textbox_submit_button}
