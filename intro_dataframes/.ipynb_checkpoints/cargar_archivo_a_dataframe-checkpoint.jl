using DataFrames
using CSV
using HTTP

# df = CSV.read("population_total.csv", DataFrame)

# Carga con HTTP
url = "https://raw.githubusercontent.com/kiramishima/workshop_python_y_datos/master/DATASETS/medals_by_country_2016.csv"

response = HTTP.get(url)

df = CSV.read(response.body, DataFrame)

println(df)