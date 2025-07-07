*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/registration.robot

*** Variables ***
${URL}                  https://magento.softwaretestingboard.com/
${Browser}              Chrome
${firstName}            Shehara
${lastName}             Niwantha
${password}             P@ssw0rdQA@2023
${conf_password}        P@ssw0rdQA@2023
${email}                gefiv85234ses@iamtile1e.com

*** Test Cases ***
Registration User
    Open Browser            ${URL}          ${Browser}
    Maximize Browser Window
    Navigate to registration page
    Enter FirstName         ${firstName}
    Enter LastName          ${lastName}
    Enter Email             ${email}
    Enter Password          ${password}
    Enter Confirmation Password     ${conf_password}
    Click Create Account Button
    Verify Succesffuly Account was Created
    Close All Browsers
