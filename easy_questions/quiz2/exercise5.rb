# Easy Questions - Quiz 2 - Exercise 5

# Munster age hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# Additional ages to add
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# Merge the additional_ages hash into the ages hash
ages.merge!(additional_ages)

# Print out the result
p ages