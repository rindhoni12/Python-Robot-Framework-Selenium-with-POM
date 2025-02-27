*** Settings ***
Library         SeleniumLibrary
Resource        ../../resources/keywords/general_keyword.robot
Resource        ../../resources/locators/menu_bar/idn_menu_bar.robot
Resource        ../../resources/locators/menu_bar/idn_menu_community.robot
Resource        ../../resources/locators/idn_main_page.robot

Test Setup      Open web browser
Test Teardown   Close web browser


*** Test Cases ***
Scenario: Verify UI Logo IDN
    [Tags]  @ui_logo_idn
    When User wait    5s
    And User wait until found        ${idn_main_logo}
    Then Element Should Be Enabled    ${idn_main_logo}


Scenario: Verify UI Menu Bar
    [Tags]  @ui_menubar
    When User wait    5s
    And User wait until found        ${idn_main_logo}
    Then Element Should Be Visible    ${menu_bar_genzmemilih}
    Then Element Should Be Visible    ${menu_bar_community}
    Then Element Should Be Visible    ${menu_bar_tech}

Scenario: Verify UI Menu Bar Gen Z
    [Tags]  @ui_menubar_genz
    When User wait    5s
    And User wait until found        ${idn_main_logo}
    Then Element Should Be Visible    ${menu_bar_genzmemilih}
    And Click Element    ${menu_bar_genzmemilih}
    When User wait    5s
    Then Location Should Be    https://www.genzmemilih.idntimes.com
    Then Element Should Be Visible    ${genzmemilih_menu_quick}

Scenario: Verify UI Menu Bar Community
    [Tags]  @ui_menubar_community
    When User wait    5s
    And User wait until found        ${idn_main_logo}
    Then Element Should Be Visible    ${menu_bar_community}
    And Click Element    ${menu_bar_community}
    When User wait    5s
    Then Element Should Be Visible    ${community_login_img}

Scenario: Verify UI Menu Bar Tech
    [Tags]  @ui_menubar_tech
    When User wait    5s
    And User wait until found        ${idn_main_logo}
    Then Element Should Be Visible    ${menu_bar_tech}
    And Click Element    ${menu_bar_tech}
    When User wait    5s
    Then Location Should Be    https://www.idntimes.com/tech


Scenario: Verify UI Trending Bar Ramadan
    [Tags]  @ui_trending_ramadan
    When User wait    5s
    And User wait until found        ${trending_ramadan}
    Then Element Should Be Visible    ${trending_ramadan}
    And Click Element    ${trending_ramadan}
    When User wait    5s
    Then Location Should Be    https://ramadan.idntimes.com

Scenario: Verify UI Trending Bar Pertamina
    [Tags]  @ui_trending_pertamina
    When User wait    5s
    And User wait until found        ${trending_pertamina}
    Then Element Should Be Visible    ${trending_pertamina}
    And Click Element    ${trending_pertamina}
    When User wait    5s
    Then Location Should Be    https://www.idntimes.com/tag/pertamina

Scenario: Verify UI Trending Bar Danantara
    [Tags]  @ui_trending_danantara
    When User wait    5s
    And User wait until found        ${trending_danantara}
    Then Element Should Be Visible    ${trending_danantara}
    And Click Element    ${trending_danantara}
    When User wait    5s
    Then Location Should Be    https://www.idntimes.com/tag/danantara

    
    
