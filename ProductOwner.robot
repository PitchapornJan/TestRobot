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
Open Browser
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}

Login
    Input Text            username        erza
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board
	
Click Menu Choose Product Backlog
    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Product Backlog items")]
	Location Should Contain        ${BACKLOG URL}
    Title Should Be                Scrum Board
    Wait Until Page Contains        USER STORY
Go Back Page Index
	Go Back                        
