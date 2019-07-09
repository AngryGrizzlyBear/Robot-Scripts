*** Settings ***
Library  SeleniumLibrary



*** Variables ***



*** Test Cases ***
Should be able to search for product
    Open Browser  http:www.amazon.com  chrome
    sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    sleep  3s
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Click Link    css=#search > div.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.s-right-column.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-result-list.s-search-results.sg-row > div:nth-child(4) > div > div > div > div:nth-child(2) > div:nth-child(2) > div > div.a-section.a-spacing-none.a-spacing-top-small > h2 > a

*** Keywords ***