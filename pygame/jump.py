import pandas as pd

df = pd.DataFrame(columns=["Nimi", "Osoite", "Puhelin"],
                  data=[["Matti Mehiläinen", "Laaksotie 1", "0401234568"],
                        ["Maija Mehiläinen", "Laaksotie 2", "0407654322"]])

# csv = Comma Separated Values

#print(df)
df2 = pd.read_csv("example_sheet.csv", delimiter=";")

#print("------------------")
#print(df2)

combined_df = pd.concat(objs=[df, df2])

#print(combined_df)

#print(combined_df.iloc[0, 2])

equipment = pd.read_html("https://rentalstore.azurewebsites.net/equipment/")[0]

#print(equipment)

# get all equipment where category is padel

padel_equipment = equipment.where(equipment["Category"] == "Padel").dropna()

print(padel_equipment)