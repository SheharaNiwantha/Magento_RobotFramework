*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/registrationLocators.py

*** Keywords ***
Open Login Page
    [Arguments]     ${URL}   ${Browser}
    open browser        ${URL}         ${Browser}
    maximize browser window

Navigate to registration page
    Wait Until Element Is Visible    ${navigate_to_registration}    10s
    Click Element       ${navigate_to_registration}
    Element Should Be Visible    //span[@class='base']

Enter FirstName

    [Arguments]    ${firstName}
    wait until element is visible       ${input_firstName_field}        10s
    input text      ${input_firstName_field}        ${firstName}

Enter LastName

    [Arguments]    ${lastName}
    wait until element is visible       ${input_lastName_field}         10S
    input text      ${input_lastName_field}        ${lastName}


Enter Email

    [Arguments]    ${email}
    wait until element is visible       ${input_email_field}         10S
    input text      ${input_email_field}        ${email}

Enter Password

    [Arguments]    ${password}
    wait until element is visible       ${input_password_field}         10S
    input text      ${input_password_field}        ${password}


Enter Confirmation Password

    [Arguments]    ${conf_password}
    wait until element is visible       ${input_confPassword_field}         10S
    input text      ${input_confPassword_field}         ${conf_password}

Click Create Account Button

    click button    ${create_AccountButton}
    sleep    4

Verify Succesffuly Account was Created
    element should be visible    ${SuccessMessageRegister}

Close All Browsers
    close all browsers
