*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${URL}        https://h4h.com.pl/
${BROWSER}    chrome
${JOBOFFERS}  xpath://*[@id="element_113_content"]/div/nav/ol/li[2]/a/span
${OFFER}      xpath://*[@id="element_1311_content"]/div/div[1]/div/div[1]/div/div/a/div
${APPLY}      xpath://*[@id="element_1313_content"]

*** Keywords ***
Open Webpage
    Open Browser  ${URL}    ${BROWSER}
    Maximize Browser Window

Click On Job Offers Link
    Click Element   ${JOBOFFERS}

Click On First Possible Job Offer
    Click Element   ${OFFER}

Click On Apply Now Button
    Click Element   ${APPLY}

Close Webpage
    BuiltIn.Sleep  3
    Close Browser