*** Settings ***
Resource        ../keywords/common_keywords.robot
Library         Browser
Test Setup      Test Setup

*** Variables ***
${NewPartForSummary}=       In this movie:
${PlotSummary}      Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.

*** Test Cases ***
Example Test
    Given User Selects Movie Details
    When User Edits Plot Summary
    And User Saves Movie Details
    Then New Plot Summary Is Visible

*** Keywords ***
Test Setup
    New Browser    chromium    headless=false
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://personal-zl0nigog.outsystemscloud.com/OSMDb_EN/

User Selects Movie Details
    Click   ${MovieTable_Row_1_Title}

User Edits Plot Summary
    Type Text   ${Txt_Movie_PlotSummary}    ${NewPartForSummary}${SPACE}     clear=False

User Saves Movie Details
    Click   ${Btn_Movie_Save}

New Plot Summary Is Visible
    ${FullNewPlotSummary}=   Catenate    ${NewPartForSummary}   ${PlotSummary}
    Get Text    ${MovieTable_Row_1_PlotSummary}     ==      ${FullNewPlotSummary}
