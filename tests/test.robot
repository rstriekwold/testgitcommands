*** Settings ***

Documentation          Test suite for CRT starter.
Library                QWeb
# Library              QForce
Library                DateTime
Library                OperatingSystem
Library                CopadoAI
Suite Setup            Setup Browser
Suite Teardown         Close All Browsers


*** Test Cases ***

Test the home page
    [Documentation]    Go to the web shop, and verify that the slogan text appears on the page.Go to the web shop, and verify that the slogan text appears on the page.    Go to the web shop, and verify that the slogan text appears on the page.Go to the web shop, and verify that the slogan text appears on the page.    Go to the web shop, and verify that the slogan text appears on the page.
    [Tags]             regression                  smoketest                   Prio1
    GoTo               https://qentinelqi.github.io/shop/
    VerifyText         Find your spirit animal     recognition_mode=vision


*** Keywords ***
Setup Browser
    Open Browser       about:blank                 chrome
