from io import StringIO
from robot.api.deco import keyword
import pandas as pd

class data_scraping:
    def __init__(self) -> None:
        self.df = pd.DataFrame()

    @keyword
    def send_source(self, source):
        source =StringIO(source)
        new_df = pd.read_html(source)[0]
        self.df = pd.concat([self.df, new_df])

    @keyword
    def filter_and_save(self):
        final_data = self.df.loc[self.df["Manufacturer"] == "TuroCo"]
        final_data.to_csv('turo_test_file.csv', index=False)