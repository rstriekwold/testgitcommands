*** Settings ***
Library    OperatingSystem
Suite Setup    Log Git

*** Keywords ***
Log Git
   ${version}=     Run    cd ${CURDIR} && git log --pretty\="%H - %cd" -n 1
    Log            ${version}