using DataFrames

println(DataFrame(A=1:3, B=5:7, fixed=1))

println(DataFrame("customer age" => [15, 20, 25],
     "first name" => ["Rohit", "Rahul", "Akshat"]))

dict = Dict("customer age" => [15, 20, 25],
   "first name" => ["Rohit", "Rahul", "Akshat"])

x = 1:10
y = x.^2

dict2 = Dict("x" => x, "y" => y)

println(DataFrame(dict))

println(DataFrame(dict2))

println(DataFrame([(a=1, b=0), (a=2, b=0)]))