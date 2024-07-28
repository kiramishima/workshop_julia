include("media.jl")
include("funcion_keywords.jl")
include("composicion.jl")
include("funciones_con_tipado.jl")
include("func_varidicas.jl")

# Ejemplo uso de funciones
cals = [8, 10, 9]

res = calculateMean(cals)

printstyled("The mean is: $res\n", color=:green)

res = calculateMean2(cals)

printstyled("The mean2 is: $res\n", color=:green)

res = calculateMean3(cals)

printstyled("The mean3 is: $res\n", color=:green)

# Ejemplo Keywords

ejemploKeywords2("x", "y", a = 3, b = 2)


# Ejemplo de Composion de funciones
result = g(f(1))
printstyled("The result is: $result\n", color=:green)


result2 = f(3) .|> g
printstyled("The result2 is: $result2\n", color=:green)

result3 = (g ∘ f)(5)
printstyled("The result3 is: $result3\n", color=:green)

# Ejemplo uso del bloque do
y = map([f(4), f(5)]) do w
  println(w)
  return w + 2
end

printstyled("The result is: $y\n", color=:green)

# Funciones con tipado
# result4 = suma("1", 2) # error
result4 = suma(3, 2)
printstyled("The result4 is: $result4\n", color=:green)

# Funciones varidicas
result5 = sumavar(1, 2, 3) # 6
printstyled("The result5 is: $result5\n", color=:green)

result6 = +(3, 4, 5) # 12
printstyled("The result6 is: $result6\n", color=:green)


result7 = sumavar2(1, 3, 4, 5) # 13
printstyled("The result7 is: $result7\n", color=:green)

# Ejemplo funcion y grafica
using Plots

z(x) = x^2
img = plot(0:0.1:5, x -> z(x))
savefig(img, "fig_1.png")