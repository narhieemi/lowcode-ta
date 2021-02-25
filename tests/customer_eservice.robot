*** Settings ***
Resource        ../keywords/common_keywords.robot
Library         Browser
Test Setup      Test Setup

*** Test Cases ***
Example Test
    Given User Enters Valid Business Id
    When User Enters Company Details
    And User Skips Attachment Details
    Then User Submits Application

*** Keywords ***
Test Setup
    New Browser    chrome    headless=false
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://tietofinlandoy-dev1.outsystemscloud.com/Hakemus/

User Enters Valid Business Id
    Fill Text   ${Inp_Business_Id}     ${ytunnus}
    Click       ${Btn_Continue}