*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}    http://localhost/Scrum/sigup.php 
${DELAY}    0.02


*** Test Case ***
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Location Should Be    ${WELCOME URL}
	
Input All Data
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Oliver
    Input Text             lname            Star
    Input Text             username         Ohmymymy
    Input Password         password            12345
    Input Text             email            oliv@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
	
No Input Image
    Input Text             fname            Make
    Input Text             lname            Star
    Input Text             username         Two
    Input Password         password            12345
    Input Text             email            mark@gmail.com
    Select From List By Index       user_role        0
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนไม่สำเร็จ กรุณาลองใหม่อีกครั้ง
	
No Input First Name
	Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Oliver
    Input Text             lname            Fish
    Input Text             username         FishOil
    Input Password         password            12345
    Input Text             email            oliv@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
No Input Last Name
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Four
    Input Text             username         FourStar
    Input Password         password            12345
    Input Text             email            four@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
No Input User Name
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Five
    Input Text             lname            Star
    Input Password         password            12345
    Input Text             email            five@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
No Input Password
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Six
    Input Text             lname            Star
    Input Text             username         six
    Input Text             email            six@gmail.com
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
No Input Email
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
    Input Text             fname            Seven
    Input Text             lname            Star
    Input Text             username         seven
    Input Password         password            12345
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
Input Only Image
    Choose File          id=image            C:/xampp/htdocs/Scrum/ImagePro/bg.png
	Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ

Input Only First Name
    Input Text             fname            Octo
	Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
Input Only Last Name
    Input Text             lname            Star
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ

Input Only User Name
    Input Text             username         eleven
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
Input Only Password
    Input Password         password            12345
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
Input Only Email
    Input Text             email            third@gmail.com
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ
	
Choose Only User Role
    Select From List By Index       user_role        1
    Click Button             submit
    Wait Until Page Contains        กรุณากรอกข้อมูลให้ครบ