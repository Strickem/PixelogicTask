*** Settings ***
Library    SeleniumLibrary
#Resource    ../Tests/PhpTravelsWeb.robot

*** Keywords ***
load
    go to   ${URL}