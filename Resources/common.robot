*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
begin webtest
    Open Browser  about:blank   ${Browser}
    MAXIMIZE BROWSER WINDOW

end webtest
    close browser