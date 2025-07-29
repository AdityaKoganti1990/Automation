*** Settings ***
Documentation     Common resources for VC Security automation
Library           FlaUILibrary
Library           Process
Library          SikuliLibrary

*** Variables ***
${APP_PATH}       C:/Program Files/Scanna MSC/VCSecurity/VCSecurity.exe
${locators}       ${CURDIR}/../locators/
${test_data}    ${CURDIR}/../testdata/
${TIMEOUT}       15

*** Keywords ***
Open VCSecurity Application
    ${PID}=    Launch Application    ${APP_PATH}
    RETURN    ${PID}

Close App
    [Arguments]    ${PID}
    SikuliLibrary.Click    ${locators}close_app.png
    Wait Until Screen Contain    ${locators}save_no.png    ${TIMEOUT}
    SikuliLibrary.Click    ${locators}save_no.png