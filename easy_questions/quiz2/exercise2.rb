# Easy Questions - Quiz 2 - Exercise 2

# initialize the array for the family
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# sum all of the ages
puts ages.values.reduce(:+)