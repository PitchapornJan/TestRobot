*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${SIGNUP URL}    http://localhost/Scrum/sigup.php 
${DELAY}    0.02


*** Test Case ***

Input All Data
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Oliver
    Input Text             lname            Star
    Input Text             username         renkizer
    Input Password         password            12345
    Input Text             email            oliv@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
    Close Browser
	
No Input Image
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             fname            Make
    Input Text             lname            Star
    Input Text             username         Two
    Input Password         password            12345
    Input Text             email            mark@gmail.com
    Select From List By Index       user_role        0
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนไม่สำเร็จ กรุณาลองใหม่อีกครั้ง
    Close Browser
	
No Input First Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
	Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             lname            Fish
    Input Text             username         FishOil
    Input Password         password            12345
    Input Text             email            oliv@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Last Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Four
    Input Text             username         FourStar
    Input Password         password            12345
    Input Text             email            four@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
	
No Input User Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Five
    Input Text             lname            Star
    Input Password         password            12345
    Input Text             email            five@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Password
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Six
    Input Text             lname            Star
    Input Text             username         six
    Input Text             email            six@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Email
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Seven
    Input Text             lname            Star
    Input Text             username         seven
    Input Password         password            12345
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Image
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
	Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser

Input Only First Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             fname            Octo
	Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Last Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             lname            Star
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser

Input Only User Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             username         eleven
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Password
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Password         password            12345
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Email
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             email            third@gmail.com
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Choose Only User Role
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Data
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser