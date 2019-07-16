*** Settings ***
Documentation  This is some basic info about the whole suite.
Library  SeleniumLibrary



*** Variables ***



*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    End Web Test


*** Keywords ***
Begin Web test
    Open Browser  about:blank  Chrome


Search for Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Hello, Sign in
    Input Text  css=#twotabsearchtextbox#twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"


Select Product from SEarch Results
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[2]/div/div/h2/a
    Wait Until Page Contains  Back to results


Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Sponsored
    Click Link  xpath=//*[@id="hlb-ptc-btn-native"]

End Web Test
    Close Browser