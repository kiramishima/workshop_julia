using DataFrames
using HTTP
using CSV

df = CSV.read("population_total.csv", DataFrame)
sub = df[df.country .== "Mexico", :]
# Combine
println(combine(sub, :population => sum))
println(combine(sub, :population => sum => :total_population))

# Transform
println(transform(sub, :population => sum => :total))

# Select
println(select(sub, :population => sum => :total))