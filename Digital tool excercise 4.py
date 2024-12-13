import pandas as pd
file_path = "/Users/arcorona23/Desktop/digital methods github/census_data.csv"
data = pd.read_csv(file_path)
print(data.head())
print(data.columns)
davidson_data = data[(data["county"] == 370) & (data["year"].isin([1820, 1830, 1840]))]
print(davidson_data.head())
population_by_year = davidson_data.groupby("year")["numperhh"].sum()
print("Total population\n" , population_by_year)