*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${LOGIN URL}    http://localhost/Scrum/login.php
${INDEX URL}    http://localhost/Scrum/index.php
${DELAY}    0.02


*** Test Case ***

Open Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        renkizer
    Input Password        password        12345
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board
	
Click Button Product Backlog
    Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]        
    Location Should Contain        http://localhost/Scrum/backlog_item.php
    Title Should Be                Scrum Board
    Close Browser
	
	