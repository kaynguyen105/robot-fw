*** Variables ***

# =========================
# Login Page - Input fields
# =========================
${input_username}    xpath=//input[@name='username']
${input_password}    xpath=//input[@name='password']

# =========================
# Login Page - Buttons
# =========================
${btn_login}     xpath=//button[@type='submit']

# =========================
# Login Page - Messages / Errors
# =========================
${login_error_message}     xpath=//div[@class='oxd-alert-content oxd-alert-content--error']


