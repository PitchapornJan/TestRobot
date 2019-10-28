*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${LOGIN URL}    http://localhost/Scrum/login.php
${INDEX URL}    http://localhost/Scrum/index.php
${DELAY}    0.02


*** Test Case ***
	
Click Button Product Backlog Of Product Owner
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        erza
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board
	
    Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]        
    Location Should Contain        http://localhost/Scrum/backlog_item.php
    Title Should Be                Scrum Board
    Close Browser

Click Button Product Backlog Of Development Team
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        moomee
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board
	
    Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]        
    Location Should Contain        http://localhost/Scrum/backlog_item.php
    Title Should Be                Scrum Board
    Close Browser
	
Click Button Product Backlog Of Scrum Master
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        scrum
    Input Password        password        123
    Click Button          submit
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board
	
    Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]        
    Location Should Contain        http://localhost/Scrum/backlog_item.php
    Title Should Be                Scrum Board
    Close Browser
	
	