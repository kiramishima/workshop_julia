z = begin
  x = 1
  y = 2
  x + y
end

printstyled("z = $z\n", color=:cyan, bold=true)

z = (x = 2; y = 3; x + y)

printstyled("z = $z\n", color=:cyan, bold=true)

z = begin x = 1; y = 2; x+y end

printstyled("z = $z\n", color=:cyan, bold=true)
