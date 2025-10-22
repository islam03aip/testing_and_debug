*** Settings ***
Library    SeleniumLibrary
Variables    locators.py
Variables    testData.py

*** Keywords ***
Log In
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    timeout=80    error=LogInButtonNotFound
    Sleep    1s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${TITLE_TEXT}
    Close Browser

Log Out
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    timeout=80    error=LogInButtonNotFound
    Sleep    1s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${TITLE_TEXT}
    Click Button    ${MENU_BUTTON}
    Click Element    ${LOGOUT_BUTTON}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}
    Close Browser

Add To Cart
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    timeout=80    error=LogInButtonNotFound
    Sleep    1s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${TITLE_TEXT}
    Click Button    ${ADD_BACKPACK_BTN}
    Click Element    ${CART_LINK}
    Wait Until Page Contains Element    ${PRODUCT_NAME}
    Close Browser

Remove From Cart
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    timeout=80    error=LogInButtonNotFound
    Sleep    1s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${TITLE_TEXT}
    Click Button    ${ADD_BACKPACK_BTN}
    Click Element    ${CART_LINK}
    Wait Until Page Contains Element    ${PRODUCT_NAME}
    Click Button    ${REMOVE_PRODUCT_BUTTON}
    Wait Until Page Does Not Contain Element    ${CART_ITEM}
    Close Browser

Invalid Login
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    timeout=80    error=LogInButtonNotFound
    Sleep    1s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${INVALID_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${ERROR_MESSAGE}
    Close Browser