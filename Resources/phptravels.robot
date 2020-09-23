*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/Register.robot
Resource    ../Resources/PO/login.robot

*** Keywords ***
landingpage.load

register a new account
    wait until page contains    Sign Up
    Input Text    xpath=//input[@name='firstname']  ${Firstname}
    input text    xpath=//input[@name='lastname']    ${Lastname}
    should not be equal    ${Lastname}    ${Firstname}
    input text    xpath=//input[@name='phone']    ${Mobile}
    input text    xpath=//input[@name='email']    ${Email}
    should contain    ${Email}    @spam4.me
    input text    xpath=//input[@name='password']    ${Password}
    input text    xpath=//input[@name='confirmpassword']    ${Password}
    click button    xpath=//button[@type='submit']
    page should contain    My Profile


User logs into the website
    input text    xpath=//input[@name='username']    ${Email}
    input text    xpath=//input[@name='password']    ${Password}
    click button    xpath=//button[text()='Login']
    wait until page contains    My Profile