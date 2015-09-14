# Easy Questions - Quiz 2 - Exercise 1

# initialize the hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# four ways to see if there is an age for "Spot"
puts ages.has_key?("Spot")
puts ages.include?("Spot")
puts ages.key?("Spot")
puts ages.member?("Spot")