*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Open New Browser
    open browser    https://sma.tec.sh/admin/login      chrome
    maximize browser window

Exit Browser
    close browser