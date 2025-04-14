*** Settings ***
Library    OperatingSystem
Suite Setup    Log Git Version

*** Keywords ***
Log Git Version
   ${version}=     Run    cd ${CURDIR} && git log --pretty\="%H - %cd" -n 1
    Log            ${version}