*** Settings ***
Resource        ../keywords/common_keywords.robot
Library         Browser
Test Setup      Test Setup

*** Variables ***
${NewPartForSummary}=               In this movie:
${PlotSummary}=                     Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.
${NewMovie_Title}=                  Fight Club
${NewMovie_Year}=                   1999
${NewMovie_PlotSummary}=            An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.
${NewMovie_GrossTakings}=           37023395

*** Test Cases ***
Add New Movie
    Given User Clicks On New Movie Button
    When User Fills New Movie Details
    And User Saves New Movie Details
    Then New Movie Is Visible In Movie Table

Edit Movie Plot Summary
    Given User Selects Movie Details
    When User Edits Plot Summary
    And User Saves Movie Details
    Then New Plot Summary Is Visible

*** Keywords ***
Test Setup
    New Browser    chromium    headless=false
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://personal-zl0nigog.outsystemscloud.com/OSMDb_EN/

    ${MovieCount}=      Get Element Count       //table[@TAID='MovieTable']/tbody/tr
    Set Test Variable      ${MovieCount}

User Selects Movie Details
    Click   ${MovieTable_Row_1_Title}

User Edits Plot Summary
    Type Text   ${Txt_Movie_PlotSummary}    ${NewPartForSummary}${SPACE}     clear=False

User Saves Movie Details
    Click   ${Btn_Movie_Save}

New Plot Summary Is Visible
    ${FullNewPlotSummary}=   Catenate    ${NewPartForSummary}   ${PlotSummary}
    Get Text    ${MovieTable_Row_1_PlotSummary}     ==      ${FullNewPlotSummary}

User Clicks On New Movie Button
    Click       ${Link_New_Movie}

User Fills New Movie Details
    Wait For Elements State     ${Inp_NewMovie_Title}       visible
    Fill Text       ${Inp_NewMovie_Title}       ${NewMovie_Title}
    Fill Text       ${Inp_NewMovie_Year}        ${NewMovie_Year}
    Fill Text       ${Txt_NewMovie_PlotSummary}         ${NewMovie_PlotSummary}
    Select Options By       ${Sel_NewMovie_Genre}       value       1
    Fill Text       ${Inp_NewMovie_GrossTakings}       ${NewMovie_GrossTakings} 
    Check Checkbox      ${Chk_NewMovie_IsOnDVD}

User Saves New Movie Details
    Click      ${Btn_Movie_Save}

New Movie Is Visible In Movie Table
    ${NewMovieCount}=      Get Element Count       //table[@TAID='MovieTable']/tbody/tr
    Should Be True      ${NewMovieCount} > ${MovieCount}
