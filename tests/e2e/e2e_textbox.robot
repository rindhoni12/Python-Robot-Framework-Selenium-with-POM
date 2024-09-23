*** Settings ***
Resource        ../../resources/keywords/general_keyword.robot

*** Test Cases ***
Coba buka webdriver
    [Tags]  @example1
    Given Open web browser 
    When User redirect to Radio Button sidebar
    And Close web browser   