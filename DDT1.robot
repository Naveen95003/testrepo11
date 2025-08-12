*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources-Robot/login_resources.robot
Suite Setup   Open my Browser
Suite Teardown   close browser
Test Template  Valid Login

*** Test Cases ***

Right user right pass     admin@yourstore.com    admin

*** Keywords ***
Valid Login

     [Arguments]  ${username}   ${password}
     Input Username    ${username}
     Input Password    ${password}
     Click login button
     Dashboard should be visible
     Click logout button