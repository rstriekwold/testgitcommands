
*** Settings ***

Documentation          Test suite for CRT starter.
Library                QWeb
# Library              QForce
Library                DateTime
Library                OperatingSystem
Library                CopadoAI
Suite Setup            Setup Browser
Suite Teardown         Close All Browsers
Test Setup             Log git version


*** Test Cases ***

Test the home page
    [Documentation]    Go to the web shop, and verify that the slogan text appears on the page.Go to the web shop, and verify that the slogan text appears on the page.    Go to the web shop, and verify that the slogan text appears on the page.Go to the web shop, and verify that the slogan text appears on the page.    Go to the web shop, and verify that the slogan text appears on the page.
    [Tags]             regression                  smoketest                   Prio1
    GoTo               https://qentinelqi.github.io/shop/
    VerifyText         Find your spirit animal     recognition_mode=vision
    # ${git_version}=    Run                         git log --pretty\="%H - %cd" -n 1
    Log to console     ${CURDIR}

Check the navigation menu items
    [Documentation]    Go to the shop homepage and verify the menu items.
    [Tags]             regression
    GoTo               https://qentinelqi.github.io/shop/
    VerifyText         Products
    VerifyText         Our Story
    VerifyText         Contact

*** Keywords ***
Log git version
    ${git_version}=    Run                         git log --pretty\="%H - %cd" -n 1
    Log                ${CURDIR}                   console=True
    Log                Git Version: ${git_version}                             console=True
        
Setup Browser
    Open Browser       about:blank                 chrome
    Log git version