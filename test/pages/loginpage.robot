*** Variables ***
${email_input_field_login}      xpath://input[@id='username']
${password_input_field_login}   xpath://input[@id='password']
${login_btn}                    xpath://button[@id='login']
${invalid_email_password_msg}   xpath://li[contains(text(),'De combinatie van e-mailadres en wachtwoord is niet geldig')]