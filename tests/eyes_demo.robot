*** Settings ***
Resource        ../keywords/common_keywords.robot
Library         applitools_eyes_setup.py
Suite Setup     Suite Setup

*** Test Cases ***
Eyes Test
    Open Eyes Session
    Navigate To Page    https://personal-zl0nigog.outsystemscloud.com/OSMDb_EN/
    Take Screenshot Of Window
    Close Eyes Session
    
*** Keywords ***
Suite Setup
    Set Api Key     ${api_key}