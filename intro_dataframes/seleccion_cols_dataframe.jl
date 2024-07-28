using DataFrames
using CSV

url = "https://raw.githubusercontent.com/kiramishima/workshop_python_y_datos/master/DATASETS/medals_by_country_2016.csv"
df = CSV.read(download(url), DataFrame)
rename!(df, :Column1 => :country)

# Select
# println(select(df, :country))
# println(select(df, "Gold"))
println(select(df, [:country, :Gold]))

# df tipo iloc
# println(df[:, :country])
println(df[1:6, :])