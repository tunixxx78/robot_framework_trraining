import pytest
from functions import *

def test_word_begins_with_capital_letter():
    assert word_begins_with_capital_letter("Turo") == True
    assert word_begins_with_capital_letter("turo") == False

def test_give_pokemon_pokedex_number():
    assert give_pokemon_pokedex_number("pikachu") == 25