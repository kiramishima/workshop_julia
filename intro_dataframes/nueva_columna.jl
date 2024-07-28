using DataFrames

dict = Dict("customer age" => [15, 20, 25],
   "first name" => ["Rohit", "Rahul", "Akshat"])

df = DataFrame(dict)

println(df)

df[!, "is_client"] = fill(false, 3)

println(df)


df.is_client[1] = true 
df.is_client[3] = true

println(df)