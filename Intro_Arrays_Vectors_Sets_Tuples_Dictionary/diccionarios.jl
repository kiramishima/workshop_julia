# Diccionarios
persona = Dict("id" => 1, "nombre" => "Pedro P", "especie" => "Mapache")

println(persona)
println(persona["id"])
println(get(persona, "id", 3))
println(get(persona, "pid", 5))
println(keys(persona))
println(values(persona))
persona["xval"] = true
persona["nombre"] = "Pedro Pedro P"
println(persona)
println(keys(persona))

# Otra forma
persona2 = Dict([("id", 2), ("nombre", "Titania"), ("especie", "Mutante")])
println(persona2)

# Generar un vector 5x1 y uno de 1x5 y realizar la multiplicación.

# Generar dos conjuntos de numeros y aplicar la union, interseccion y diferencia.

# Generar un diccionario que utilice tuplas como valor.