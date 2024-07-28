using Match

struct Address
  street::String
  num::Int
end

struct Person
   # Propiedades
   firstName::String
   lastName::String
   address::Address
end

item = Person("Kuzuna", "Midoriya", Address("Calle Siempre Viva", 12356))

result = @match item begin
  # Patrones
  Person("Itadori", lname, _) => "Itadori $lname"
  Person(name, "Kuchiki", _) => "$name Kuchiki"
  Person(_, _, Address(_, 1234)) => "Springfield"
  _ => "Otro valor default"
end

println(result)

