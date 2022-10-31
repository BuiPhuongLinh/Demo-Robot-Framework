

*** Settings ***
Documentation
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}              http://localhost:4723/wd/hub    # URL to appium server
${Version_Android}         10
${name_device}             c1569aa7
${TEXT_1}                  id=com.example.myapplication:id/edtFirstNumber
${TEXT_2}                  id=com.example.myapplication:id/edtSecondNumber
${SUBMIT_BUTTON}           id=com.example.myapplication:id/tvClickResult
${DATA_BUTTON}           id=com.example.myapplication:id/tvResult

*** Keywords ***
Open App Demo
    Open Application     ${REMOTE_URL}     automationName=UiAutomator2     platformName=Android   deviceName=${name_device}   platformVersion=${Version_Android}    appPackage=com.example.myapplication          appActivity=com.example.myapplication.MainActivity      noReset=true

*** Test Cases ***
TC1
    Open App Demo
    Input Text    ${TEXT_1}    1
    Input Text    ${TEXT_2}    1
    Click Element    ${SUBMIT_BUTTON}
    ${result_success}=  Get Text    ${DATA_BUTTON}
    ${result_success_number}=  Convert To Integer  ${result_success}
    Should Be Equal As Integers    ${result_success}    2
