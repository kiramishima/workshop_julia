# Vector Columna
col = 1:5
println(col)
col2 = [1,2,3,4,5]
println(col2)

# Vector fila
row = [1 2 3 4 5]
println(row)

# Matriz
#=
Tenemos varias formas de declarar una matriz.
=#
# Forma 1
mat = [1 2 3; 4 5 6; 7 8 9]
# Forma 2
mat2 = [
  1 2 3
  4 5 6
  7 8 9
]
# Forma 3
col1 = [1,2,3,4,5]
col2 = [6, 7, 8, 9, 10]
col3 = [11, 12, 13, 14, 15]
mat3 = [
  col1 col2 col3
]
# Forma 4
col4 = [1 2]
col5 = [3 4]
mat4 = [
  col4; col5
]
println(mat)
println(mat2)
println(mat3)

#= 
Otras formas de declarar arrays/vectores
- zeros
- ones
- fill
=#
#=
zeros - Genera un vector columna de N elementos con valor 1. Tambien podemos crear una matriz agregando la dimension.
=#
ceros = zeros(4) # vector columna con 4 elementos
println(ceros)

cerosInt = zeros(Int16, 4) # vector columna con 4 elementos de tipo Int16
println(cerosInt)

cerosMatrix = zeros(4, 4) # Matrix de 4x4
println(cerosMatrix))
cerosIntMatrix = zeros(Int8, 4, 4) # Matrix de 4x4 de tipo Int8
println(cerosIntMatrix))

#=
ones - Genera un vector columna de N elementos de valor 1. Tambien podemos crear una matriz agregando la dimensión
=#
unos = ones(4) # vector columna con 4 elementos
println(unos)

unosInt = ones(Int16, 4) # vector columna con 4 elementos de tipo Int16
println(unosInt)

unosMatrix = ones(4, 4) # Matrix de 4x4
println(unoMatrix))
unosIntMatrix = ones(Int8, 4, 4) # Matrix de 4x4 de tipo Int8
println(unosIntMatrix))

#=
fill - Genera un vector columna de N elementos de valor X. Sea X un valor definido por nosotros. Tambien podemos crear una matriz agregando la dimensión via una tupla (n, m)
=#
tres = fill(3, 4) # vector columna con 4 elementos de valor 3
println(tres)

cuatros = fill(4, (1, 3)) # Matrix 1x3 con elementos de valor 4
println(cuatros)

cerosMatrix = fill(zeros(Int, 2), 2) # Matrix de 2x2 con elementos de valor 0
println(cerosMatrix))

#=
Funciones para arrays
- ndim - Dimensión del vector/matrix
- size - Tamaño del vector/matrix
- length - 
=#
A = ones(Int, 5)
println("Dimension: $(ndims(A))\nSize: $(size(A))\nLength: $(length(A))")
# Dimension: 1
# Size: (5,)
# Length: 5

B = ones(Int, 5, 2)
println("Dimension: $(ndims(B))\nSize: $(size(B))\nLength: $(length(B))")
# Dimension: 2
# Size: (5,2)
# Length: 10

#=
- reshape - Cambiar dimensionalidad
- eltype
- collect
- push!
- pop!
=#
# reshape
println(reshape(A, 1, 5))
println(reshape(B, 2, 5))
C = [1, true, "Pedro P", π]
# eltype
println(eltype(A))
println(eltype(ones(3)))
println(eltype(C))
# collect
D = collect("NAGINI")
E = collect(1:10)
println(D)
println(E)
# push!
push!(E, 11)
println(E)
# pop!
pop!(E)
println(E)

#=
Operaciones
=#
# Suma
println(A + A)

# Resta
println(A - A)

# Escalar
println(2A)

# Producto
G = [2 2 2 2]
# A -> 5x1
# G -> 1x4
println(A * G) # 5x4
println(G * A) # Error
println(G .* A)