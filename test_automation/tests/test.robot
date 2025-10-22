*** Settings ***
Resource    ../resources/common.robot

*** Test Cases ***
LOGIN_TEST
    Log In

LOGOUT_TEST
    Log Out

ADD_TO_CART_TEST
    Add To Cart

REMOVE_FROM_CART_TEST
    Remove From Cart

INVALID_LOGIN_TEST
    Invalid Login