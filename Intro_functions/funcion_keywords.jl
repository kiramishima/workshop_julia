function ejemploKeywords(x; a = 0, b = 2)
  println("y = $a$x + $b") 
  return nothing
end


function ejemploKeywords2(x, y; a = 0, b = 2)
  println("z = $a$x + $b$y") 
  return nothing
end