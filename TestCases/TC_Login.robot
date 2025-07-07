*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/login_keywords.robot


*** Variables ***
${URL}            https://magento.softwaretestingboard.com/
${Browser}        Chrome
${email}          gefiv85234ses@iamtile1e.com
${password}       P@ssw0rdQA@2023

*** Test Cases ***
Log Into the Application
       Open Browser To Login Page      ${URL}    ${Browser}
       Navigate To Sign In Page
       Enter Credentials And Submit    ${email}    ${password}
       Verify Login Successful