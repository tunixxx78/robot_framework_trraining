import pandas as pd
from robot.api.deco import keyword


class data_scraping:
    def __init__(self):
            self.columns = ["Name", "Category", "Manufacturer",
                                                "Condition", "Availability"]
            
    @keyword
    def get_data(data):
        
        equipment_df = pd.DataFrame()

        # for cat in categorys:
        df = pd.read_html(data)
        df = df.where(df["Manufacturer"] == "TuroCo").dropna()
        df.reset_index(drop=True, inplace=True)
        equipment_df = pd.concat(objs=[equipment_df, df])
        equipment_df.reset_index(drop=True, inplace=True)

        equipment_df.to_csv("equipment.csv")
            
        return equipment_df