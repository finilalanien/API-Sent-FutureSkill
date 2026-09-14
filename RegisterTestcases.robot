*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/RegisterKeywords.robot   
Variables        ../resources/config/config.yaml
Variables        ../resources/testdata/testdata.yaml
Suite Setup      Open Browser    ${baseUrl}    chrome
Suite Teardown   Close Browser

*** Test Cases ***
สมัครสมาชิกของ Future Skill
    [Documentation]    ทดสอบการสมัครสมาชิกเว็บ Future Skill Step 1 - 5
    [Tags]             Registration
    Step1: เข้า Web: Future Skill
    Step2: กดปุ่ม "สมัครสมาชิก" บนหน้าแรก
    Step3: กรอกข้อมูลสมัครสมาชิก
    Step4: กดปุ่ม "สมัครสมาชิก" เพื่อส่งข้อมูล
    Step5: ระบบจะแสดงหน้าให้กรอก OTP และตรวจสอบข้อความ

