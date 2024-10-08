*** Settings ***
Documentation  Kiểm thử chức năng đăng nhập
Library  SeleniumLibrary

*** Variables ***
${URL}  https://business.dev.pandosima.org/
${BROWSER}  Chrome
${EMAIL}  pandosima.com@gmail.com
${PASSWORD}  Abc@12345


*** Test Cases ***

Login Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[1]/div/div[1]/div/input
    input text  xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[1]/div/div[1]/div/input     ${EMAIL}
    Wait Until Page Contains Element    xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[2]/div/div[1]/div/input    10
    Input Text    xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[2]/div/div[1]/div/input    ${PASSWORD}
    Click Button  xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/div/button
    sleep   5