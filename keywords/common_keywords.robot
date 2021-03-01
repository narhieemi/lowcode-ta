*** Settings ***
Documentation       
Resource    ../variables/common_variables.robot
Library     OperatingSystem
Library     applitools_eyes_setup.py
Library     Browser

*** Keywords ***
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

User Searches For Movie ${movie}
    Fill Text       ${Inp_Search}   ${movie}
    Click       ${Btn_Movie_Filter}
    Click       ${MovieTable_Row_1_Title}

User Adds Crew To Movie
    Click       ${Link_AddCast}
    Select Options By       ${Cmb_Person}       value       12
    Select Options By       ${Cmb_PersonRole}       value       3
    Click       ${Btn_SaveCastOrCrew}

New Member Of Crew Is Visible
    Get Text    ${List_CastAndCrew}     *=      Janet Tebrooke
