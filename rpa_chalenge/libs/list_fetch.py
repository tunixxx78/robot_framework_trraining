import pandas as pd


class list_fetch:
    def __init__(self):
        pass
    
    def user_data_as_list_of_dictionarys(self, filepath):
        df = pd.read_excel(filepath)
        result = df.to_dict(orient='records')
        pd.read_excel(filepath).to_csv("Turo_test_excel_task.csv")
        return result