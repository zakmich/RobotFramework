*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${url}        https://h4h.com.pl/
${browser}    chrome
${joboffers}  xpath://*[@id="element_113_content"]/div/nav/ol/li[2]/a/span
${offer}      xpath://*[@id="element_1311_content"]/div/div[1]/div/div[1]/div/div/a/div
${apply}      xpath://*[@id="element_1313_content"]

*** Keywords ***
Open Webpage
    Open Browser  ${url}    ${browser}
    Maximize Browser Window

Select Job Offer
    Click Element   ${joboffers}
    Click Element   ${offer}

Test Of Apply Now Button
    Click Element   ${apply}

Finish Test Case
    BuiltIn.Sleep   1
    Close Browser