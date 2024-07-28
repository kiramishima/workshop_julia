v1 = collect(1:10)
indice = 1
while indice < length(v1)+1
  printstyled("v1[$indice] = $(v1[indice])\n", color=:cyan)
  global indice += 1
end

for j = 1:3
  printstyled("j = $j\n", color=:red)
end

for i in [1, 3, 6]
  printstyled("i = $i\n", color=:blue)
end

for s ∈ ["foo","bar","baz"]
  println(s)
end

i = 1
while true
   println(i)
   if i >= 3
       break
   end
   global i += 1
end

for i = 1:10
     if i % 3 != 0
         continue
     end
     println(i)
 end

x = [2i + i for i in collect(1:10)]
println(x)