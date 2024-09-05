import random
from robot.api.deco import keyword

class UsernameGenerator:
    def __init__(self):
        self.lower_case_chars = [chr(i) for i in range(97,97+26)]
        self.upper_case_chars = [chr(i) for i in range(65,65+26)]
        self.chars = self.lower_case_chars + self.upper_case_chars

    @keyword
    def create_random_username(self, length=8):
        random_name = ''
        for i in range(length):
            random_name = random_name + random.choice(self.chars)
        return random_name
        
    @keyword
    def create_random_password(self, length=8):
        random_pw = ''
        for i in range(length):
            random_pw = random_pw + random.choice(self.chars)
        return random_pw

    @keyword
    def create_random_email(self):
        random_user = ''
        for i in range(6):
            random_user = random_user + random.choice(self.chars)

        random_domain = ''
        for i in range(6):
            random_domain = random_domain + random.choice(self.chars)

        email = f'{random_user}@{random_domain}.com'
        return email