*** Settings ***
Documentation   some basic info about the tests
Resource    ../Resources/phptravels.robot
Resource    ../Resources/common.robot
Test Setup    begin webtest
Test Teardown    end webtest

*** Variables ***
${Browser} =  chrome
${URL} =  https://www.phptravels.net/register
${Login_URL} =    https://www.phptravels.net/login
${Firstname} =    axem
${Lastname} =    maxes
${Email}
${Mobile} =    +202310420421
${Password} =    M_p1xel1

*** Test Cases ***
User Register a new account
    [Documentation]    user use the information available
    [Tags]    smoke
    register.load
    phptravels.register a new account
    #amazon.select product from search result
    #amazon.add product to cart
    #amazon.proceed to checkout

User login using his correct credentials
    [Documentation]    user use the information available
    [Tags]    smoke
    login.load
    phptravels.User logs into the website