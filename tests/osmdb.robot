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

Add Crew To Movie
    Given User Searches For Movie Capote
    When User Adds Crew To Movie
    Then New Member Of Crew Is Visible

Add User Review To Movie
    Given User Logs In
    And User Selects Movie Details
    When Review Comment Is Added To Movie
    Then New Review Comment Is Visible


*** Keywords ***
Test Setup
    New Browser    chromium    headless=false
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://personal-zl0nigog.outsystemscloud.com/OSMDb_EN/

    ${MovieCount}=      Get Element Count       //table[@TAID='MovieTable']/tbody/tr
    Set Test Variable      ${MovieCount}

    Set Test Variable       ${username}     maryjane_EN
    Set Test Variable       ${password}     maryjane
    