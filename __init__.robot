*** Settings ***
Library    OperatingSystem
Suite Setup    Log Git

*** Keywords ***
Log Git
    Run    cd ${CURDIR} | git log --pretty\="%H - %cd" -n 1
    Run    start shell command cd ${CURDIR}; git log --pretty\="%H - %cd" -n 1