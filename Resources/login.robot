*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/loginLocators.py

*** Keywords ***
Open Browser
    [Arguments]         ${URL}     ${BROWSER}
    open browser        ${URL}     ${BROWSER}
    maximize browser window

Navigate to sign_IN page
        click element        ${sign_IN}

Enter Email
        [Arguments]    ${email}
        wait until element is visible    ${email}       10s
        input text      ${email}        ${email}

Enter Password
        [Arguments]    ${password}
        wait until element is visible    ${password}       10s
        input text      ${password}        ${password}

Click sign in button
        click element  ${sign_IN_button}