# Sets
A = Set([1, 2, 3, 4, 5])
B = Set([5, 4, 7, 9])

println(1∈A) # true
println(10∈A) # false

println(A ∪ B) # Union
println(union(A, B))
println(A ∩ B) # Interseccion
println(intersect(A, B))
println(setdiff(A, B)) # Diferencia A -> B
println(setdiff(B, A)) # Diferencia B -> A

# Tuplas
printstyled("Tuplas\n", color =:green)
C = (1, 2, 3, 4, 5)
println(C[1]) # 1 # true
D = 1, 2, 3, 4
println(D[end]) # 4
println(typeof(D))

# Convertir tupla a vector
E = collect(D)
println(E)
println(typeof(E))

F = [x for x in D]
println(F)
println(typeof(F))

# Destructurando una tupla
valX, valY, valZ = (1, 2, 3)
println("Valores: \n X = $valX,\n Y= $(valY),\n Z= $(valZ)")

# Named Tuplas
A2 = (x=1, y=2, z=3)
println(A2[:z]) # 3
println(keys(A2))
println(values(A2))