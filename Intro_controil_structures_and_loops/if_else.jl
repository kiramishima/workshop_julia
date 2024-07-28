#  ∧ -> AND
#  ∨ -> OR
x = 10
y = 2x

if x > y
  printstyled("x is greater than y\n", color=:cyan, bold=true)
elseif x < y
  printstyled("y is greater than x\n", color=:blue, bold=true)
else
  printstyled("x is less than or equal to y\n", color=:red, bold=true)
end

if true
   printstyled(":D\n", color=:green, bold=true)
end

z = x + y

if x > y && x > z
  printstyled("x is greater than y and z\n", color=:cyan, bold=true)
elseif x < y || x > z
  printstyled("y is greater than x but x is greater than z\n", color=:blue, bold=true)
else
  printstyled("x is less than or equal to y or z\n", color=:red, bold=true)
end

salida = x > y ? "x is greater than y" : "x is less than or equal to y"
printstyled(salida, color=:cyan, bold=true)