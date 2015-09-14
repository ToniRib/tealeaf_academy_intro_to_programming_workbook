# Easy Questions - Quiz 2 - Exercise 3

# Initialize the age hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Select only ages less than 100
ages.select! { |k, v| v < 100 }

# Print out the result
p ages