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
