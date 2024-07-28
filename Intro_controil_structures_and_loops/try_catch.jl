try
  println("==Bloque try==")
  a = 10
  if a > 20
    error("a es menor que 20")
  else
    throw(ArgumentError("a es diferente de 20"))
  end
catch e
println("==Bloque catch==")
  println(typeof(e))
  if isa(e, DivideError)
    println("No es posible dividir entre 0")
  elseif isa(e, ArgumentError)
    println("Error de argumento")
  else
    println("Error generico")
  end
finally
  println("==Bloque finally==")
  println("Fin del bloque try-catch")
end