*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${LOGIN URL}        http://localhost/Scrum/login.php
${INDEX URL}        http://localhost/Scrum/index.php
${BACKLOG URL}      http://localhost/Scrum/backlog_item.php
${PROFILE URL}      http://localhost/Scrum/profiles.php
${API URL}          http://localhost/Scrum/api/
${DELAY}    0.02


*** Test Case ***

Click Menu Choose Product Backlog Item
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        moomee
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Product Backlog items")]
	Location Should Contain        ${BACKLOG URL}
    Title Should Be                Scrum Board
    Wait Until Page Contains        USER STORY
    Close Browser
	
Click Menu Choose Profile
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        moomee
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Profile")]
	Location Should Contain        ${PROFILE URL}
    Title Should Be                Scrum Board
    Wait Until Page Contains        moo mee
    Close Browser
	
Click Menu Choose API
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        moomee
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "API")]
	Location Should Contain        ${API URL}
    Title Should Be                Scrum Board
	Wait Until Page Contains        Comments
    Close Browser
	
Click Menu Choose Logout
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        moomee
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Logout")]
	Location Should Contain        ${INDEX URL}
    Title Should Be                Scrum Board
	Wait Until Page Contains        LOG IN
    Close Browser
	
    