*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/loginLocators.py

*** Keywords ***
Open Browser To Login Page
    [Arguments]     ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Navigate To Sign In Page
    Click Element    ${sign_in}

Enter Credentials And Submit
    [Arguments]                             ${user_email}           ${user_password}
    Wait Until Element Is Visible           ${email_locator}        10s
    Input Text                              ${email_locator}        ${user_email}
    Wait Until Element Is Visible           ${password_locator}     10s
    Input Text                              ${password_locator}     ${user_password}
    Click Element                           ${sign_in_button}

Verify Login Successful
    Wait Until Page Contains Element        ${account_panel}    10s
    Page Should Contain Element             ${account_panel}