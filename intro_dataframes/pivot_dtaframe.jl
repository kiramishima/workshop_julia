using DataFrames
using Statistics
using CSV

df = dropmissing(CSV.read("population_total.csv", DataFrame))
gdf = groupby(df, :country)


pivot = unstack(df, :country, :year, :population)

println(names(pivot))

println(gdf[("China",)])
println(pivot[1:5, ["country", "2020", "2010", "1990"]])