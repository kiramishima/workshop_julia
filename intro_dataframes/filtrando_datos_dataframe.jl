using DataFrames
using CSV

df = CSV.read("medals_by_country_2016.csv", DataFrame)


# df[filter]
println(df[df.country .== "Canada", [:Gold, :Silver]])
println(df[findall(>=(50), df.Gold), :])

# filter(:col => ==(val), df)
# filter(row -> row.col == val, df)
function maxBronzeCountries(total)
  total >= 30
end

function complex_filter(bronze, silver, gold)
  bronze >= 30 && silver >= 30 && gold < 50
end

println(filter(:Bronze => maxBronzeCountries, df))
println(filter([:Bronze, :Silver, :Gold] => complex_filter, df))
println(filter(row -> row.Silver < 40, df))

# subset(df, :col_type_bool)
# subset(df, :col => x ->  x.==(smt))
println(subset(df, :Example))
println(subset(df, :Gold => x -> x .>= 50))
