*** Settings ***
Documentation     Variables used in test suites

*** Variables ***
# Customer eService variables
${api_key}=                                     XXjSGZKDvIVhEKDCU7100tjfjWWT5qzKXrmuNiyuR106N9k110
${ytunnus}=                                     0101138-5
${Inp_Business_Id}=                             //input[@taid="BusinessId_field"]
${Btn_Continue}=                                //input[@taid="ContinueButton"]

# OSMDb / Movies variables
${MovieTable_Row_1_Title}=                      //table[@TAID='MovieTable']/tbody/tr[1]/td/a
${MovieTable_Row_1_PlotSummary}=                //table[@TAID='MovieTable']/tbody/tr[1]/td[3]
${Txt_Movie_PlotSummary}=                       //textarea[@TAID="Movie_PlotSummary"]
${Btn_Movie_Save}=                              //input[@TAID="Movie_Save"]
${Link_New_Movie}=                              //span[@TAID="Movies_NewMovie"]
${Inp_Search}=                                  //input[@TAID="Movies_Search"]
${Btn_Movie_Filter}                             //input[@TAID="Movies_Filter"]
${Link_Login}=                                  //div[@id="wt20_OutSystemsUIWeb_wt18_block_wtHeader_wtRight_wt18_wtLogin"]

# OSMDb / New Movie page
${Inp_NewMovie_Title}=                          //input[@TAID="MovieDetail_Title"]
${Inp_NewMovie_Year}=                           //input[@TAID="MovieDetail_Year"]
${Txt_NewMovie_PlotSummary}=                    //textarea[@TAID="Movie_PlotSummary"]
${Sel_NewMovie_Genre}=                          //select[@TAID="MovieDetail_Genre"]
${Inp_NewMovie_GrossTakings}=                   //input[@TAID="MovieDetail_Gross"]
${Chk_NewMovie_IsOnDVD}=                        //input[@TAID="MovieDetail_OnDVD"]

# Movie detail page
${Link_AddCast}=                                //span[@TAID="MovieDetail_Add"]
${List_CastAndCrew}=                            //span[@class="ListRecords"]
${Txt_Comment}=                                 //textarea[@TAID="Input_Comment"]
${Btn_Comment}=                                 //input[@TAID="CommentButton"]
${Txt_ReviewComment}=                           //span[contains(text(), 'Great movie')]

# Add cast/crew to movie page
${Cmb_Person}=                                  //select[@TAID="AddMovieParticipant_SelectPerson"]
${Cmb_PersonRole}=                              //select[@TAID="AddMovieParticipant_Role"]
${Btn_SaveCastOrCrew}                           //input[@TAID="AddMovieParticipant_Save"]

# Login page
${Inp_Username}=                                //input[@TAID="UserNameInput"]
${Inp_Password}=                                //input[@TAID="PasswordInput"]
${Btn_LogIn}=                                   //input[@TAID="LoginButton"]