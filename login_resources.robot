*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}   https://admin-demo.nopcommerce.com/login
${BROWSER}  chrome

*** Keywords ***
Open my Browser
    open browser   ${LOGIN URL}   ${BROWSER}
    maximize browser window

close browser
    close all browsers

Input Username
    [Arguments]  ${username}
    input text   id:Email     ${username}

Input Password
    [Arguments]  ${password}
    input text   xpath://input[@id='Password']   ${password}

Click login button
    Click element   xpath://*[@type='submit']

Click logout button
    Click element  Xpath://a[normalize-space()='Logout']

Error message should visible
    page should contain  Login was unsuccessful

Dashboard should be visible
    page should contain  Dashboard