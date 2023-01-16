*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Keywords.robot
Suite Setup    Set Selenium Speed   1

*** Test Cases ***
Test to verify that apply for job button works correctly
    [Tags]  Functional

    Open Webpage
    Click On Job Offers Link
    Click On First Possible Job Offer
    Click On Apply Now Button
    [Teardown]  Close Webpage
