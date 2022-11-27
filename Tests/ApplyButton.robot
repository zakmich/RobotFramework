*** Settings ***
#Documentation   Test to verify that apply for job function works correctly
Library         SeleniumLibrary
Resource        ../Resources/Keywords.robot
Suite Setup    Set Selenium Speed  1

*** Test Cases ***
Test to verify that apply for job button works correctly
    [Tags]  Functional

    Open Webpage
    Select Job Offer
    Test Of Apply Now Button
    Finish Test Case
