*** Settings ***
Documentation     Variables used in test suites

*** Variables ***
# Customer eService variables
${api_key}=             XXjSGZKDvIVhEKDCU7100tjfjWWT5qzKXrmuNiyuR106N9k110
${ytunnus}=             0101138-5
${Inp_Business_Id}=     //input[@taid="BusinessId_field"]
${Btn_Continue}=        //input[@taid="ContinueButton"]

# OSMDb / Movies variables
${MovieTable_Row_1_Title}           //table[@TAID='MovieTable']/tbody/tr[1]/td/a
${MovieTable_Row_1_PlotSummary}     //table[@TAID='MovieTable']/tbody/tr[1]/td[3]
${Txt_Movie_PlotSummary}            //textarea[@TAID="Movie_PlotSummary"]
${Btn_Movie_Save}                   //input[@TAID="Movie_Save"]