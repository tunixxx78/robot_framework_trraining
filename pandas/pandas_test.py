import pandas as pd

df = pd.DataFrame(columns=["Nimi", "Osoite", "Puhelin"],
                  data=[["Matti Mehiläinen", "Laaksotie 1", "0401234568"],
                        ["Maija Mehiläinen", "Laaksotie 2", "0407654322"]])
final_df = pd.DataFrame()

# csv = Comma Separated Values

#print(df)
# df2 = pd.read_csv("example_sheet.csv", delimiter=";")

#print("------------------")
#print(df2)

# combined_df = pd.concat(objs=[df, df2])

#print(combined_df)

#print(combined_df.iloc[0, 2])

ADDED_EQUIPMENTS = ['Lumilauta', 'Kypärä', 'Turbo Sukset']

def get_data(index_nro: int):
    
    equipment = pd.read_html("https://rentalstore.azurewebsites.net/equipment/")[0]
    
    final_df = pd.DataFrame(columns=["Name", "Category", "Manufacturer",
                                            "Condition", "Availability"], data=[["_", "_", "_", "_", "_"]])
    
    added_equipment = equipment.where(equipment["Name"] == ADDED_EQUIPMENTS[index_nro]).dropna()
    final_df = pd.concat(objs=[added_equipment, final_df])

        
    final_df.to_csv("turo_test.csv")
    return index_nro
