import pandas as pd
from robot.api.deco import keyword

class fetch_new_user_list:
    def __init__(self):
        pass
    
    @keyword
    def fetch_new_list(self, filepath):
        df = pd.read_csv(filepath, sep=';')
        result_list = df.to_dict(orient='records')
        return result_list