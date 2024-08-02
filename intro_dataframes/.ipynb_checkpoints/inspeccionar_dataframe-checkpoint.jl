using DataFrames
using CSV
using HTTP

df = CSV.read("population_total.csv", DataFrame)
# first & last
println(first(df))
println(first(df, 3))
println(last(df))
println(last(df, 10))

# propertynames & names
println(propertynames(df))
println(names(df))

# size, nrow, ncol
println(size(df))
println(nrow(df))
println(ncol(df))

# columnindex
println(columnindex(df, :country))

# describe
println(describe(df))

println(describe(df, :mean, :std))