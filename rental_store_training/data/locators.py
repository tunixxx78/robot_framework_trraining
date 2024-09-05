LOGIN_USERNAME_FIELD = '//*[@id="id_username"]'
LOGIN_PASSWORD_FIELD = '//*[@id="id_password"]'
LOGIN_BUTTON = '//form//button[@type="submit"]'
LOGOUT_LINK = '//*[@id="logout"]'

# for navigation task
LINKS = ['//*[@id="login"]', '//a[contains(text(), "Equipment")]', '//*[@id="signup"]']

# select from list
EQUIPMENT_ADD_BUTTON = '//*[@id="add-equipment"]'
EQUIPMENT_TYPE_SELECTOR = '//*[@id="id_category"]'

# search equipment
EQUIPMENT_SEARCH_FIELD = '//*[@id="id_name"]'
EQUIPMENT_SEARCH_BUTTON = '//button[contains(text(),"Filter search results")]'

#user signup
FIRST_NAME_FIELD ='//*[@id="id_first_name"]'
LAST_NAME_FIELD = '//*[@id="id_last_name"]'
NEW_USERNAME_FIELD = '//*[@id="id_username"]'
EMAiL_FIELD = '//*[@id="id_email"]'
NEW_PASSWORD_FIELD = '//*[@id="id_password1"]'
NEW_PASSWORD_AGAIN_FIELD = '//*[@id="id_password2"]'
SIGNUP_BUTTON = '//button[contains(text(), "Sign up")]'