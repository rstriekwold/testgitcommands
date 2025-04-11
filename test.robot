
*** Settings ***

Documentation          Test suite for CRT starter.
Library                QWeb
# Library                QForce
Library    DateTime
Library    CopadoAI
Suite Setup            Open Browser                about:blank                chrome     #prefs="autocomplete":off
Suite Teardown         Close All Browsers


*** Test Cases ***

Test the home page
    [Documentation]   Go to the web shop, and verify that the slogan text appears on the page.Go to the web shop, and verify that the slogan text appears on the page.      Go to the web shop, and verify that the slogan text appears on the page.Go to the web shop, and verify that the slogan text appears on the page.      Go to the web shop, and verify that the slogan text appears on the page.
    [Tags]            regression        smoketest         Prio1
    GoTo             https://qentinelqi.github.io/shop/
    VerifyText        Find your spirit animal             recognition_mode=vision
   ${test}=            Prompt            give me the time
   Log To Console       ${test}


Check the navigation menu items
    [Documentation]    Go to the shop homepage and verify the menu items.
    [Tags]            regression       
    GoTo               https://qentinelqi.github.io/shop/
    VerifyText         Products
    VerifyText         Our Story
    VerifyText         Contact
