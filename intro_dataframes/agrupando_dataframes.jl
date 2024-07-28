using DataFrames
using HTTP
using CSV

df = CSV.read("population_total.csv", DataFrame)
gdf = groupby(df, :country)

println(gdf[("Mexico",)])

result_df = dropmissing(combine(gdf, :population => sum => :total_population))
println(sort(result_df, :total_population, rev=true))

CSV.write("population_agrupada.csv", result_df)