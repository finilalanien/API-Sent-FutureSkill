*** Settings ***
Library          SeleniumLibrary

*** Keywords ***
Step1: เข้า Web: Future Skill
    Go To    ${baseUrl}
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds

Step2: กดปุ่ม "สมัครสมาชิก" บนหน้าแรก
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'สมัครสมาชิก')]
    Click Element                    xpath=//button[contains(text(), 'สมัครสมาชิก')]

Step3: กรอกข้อมูลสมัครสมาชิก
    Wait Until Element Is Visible    xpath=//input[@placeholder='อีเมล']
    
    # เรียกใช้ตัวแปรจากไฟล์ testdata.yaml
    Input Text       xpath=//input[@placeholder='อีเมล']            ${Email}
    Input Text       xpath=//input[@placeholder='ชื่อ']             ${FIRSTNAME}
    Input Text       xpath=//input[@placeholder='นามสกุล']          ${LASTNAME}
    Input Text       xpath=//input[@placeholder='เบอร์โทรศัพท์']     ${Phone}
    Input Text       xpath=//input[@placeholder='รหัสผ่าน']          ${valid_password}
    Input Text       xpath=//input[@placeholder='ยืนยันรหัสผ่าน']    ${valid_password}
    
    Select Checkbox  xpath=//input[@type='checkbox']

Step4: กดปุ่ม "สมัครสมาชิก" เพื่อส่งข้อมูล
    Click Button     xpath=//button[contains(text(), 'สมัครสมาชิก')]

Step5: ระบบจะแสดงหน้าให้กรอก OTP และตรวจสอบข้อความ
    Wait Until Page Contains    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์    timeout=10s



