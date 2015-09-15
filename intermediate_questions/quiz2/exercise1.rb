# Intermediate Questions - Quiz 2 - Exercise 1

# original hash
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

# find the age of only the men in the family
total_age = 0
munsters.each do |name, info|
  total_age += info["age"] if info["gender"] == "male"
end

# print out the result
puts "The sum of the age of the men in the family is #{total_age}."