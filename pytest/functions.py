import requests

def word_begins_with_capital_letter(word: str):
    '''
    This function is for checking if the word begins with a capital letter
    '''
    return word[0].isupper()


def calculate_price_after_VAT_change(price):
    '''
    This function is for calculating the new price for any product
    after the VAT has changed from 24% to 25.5%
    '''
    if type(price) == str:
        price = float(price)
    price_without_tax = price / 1.24
    new_price = price_without_tax * 1.255
    return round(new_price, 2)


def currency_converter(amount, currency):
    '''
    This function is for converting the amount from one currency to EUR
    '''
    if currency == 'USD':
        return amount * 1.19
    elif currency == 'GBP':
        return amount * 0.89
    elif currency == 'SEK':
        return amount * 10.25
    else:
        return 'Currency not supported'


def reverse_string(string):
    '''
    This function is for reversing a string
    '''
    return string[::-1]


def give_pokemon_pokedex_number(pokemon):
    response = requests.get(f'https://pokeapi.co/api/v2/pokemon/{pokemon}')
    pokedex_number = response.json()['game_indices'][-1]["game_index"]
    return pokedex_number


def password_validator(password):
    '''
    This function is for determining whether a password is strong
    enough to be used
    '''
    if len(password) < 8:
        return False
    if not any(char.isdigit() for char in password):
        return False
    if not any(char.isupper() for char in password):
        return False
    if 'password' in password.lower():
        return False
    if 'salasana' in password.lower():
        return False
    if '1234' in password:
        return False

    return True