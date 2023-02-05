*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Keywords.robot
Suite Setup    Set Selenium Speed   1

*** Test Cases ***
Test to check if site with aplication for job form is opened after "Apply"(for a job) button is clicked
    [Tags]  Functional

    Open Webpage
    Click On Job Offers Link
    Click On First Possible Job Offer
    Click On Apply Now Button
    Check If Aplication Form Is Opened
    [Teardown]  Close Webpage
