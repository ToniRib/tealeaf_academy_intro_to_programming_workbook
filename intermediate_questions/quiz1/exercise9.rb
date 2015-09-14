# Intermediate Questions - Quiz 1 - Exercise 9

# original munsters hash
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# determine what age range each person belongs to and add that to the hash
munsters.each_value do |info|
  case info['age']
  when (0..17)
    info['age group'] = 'kid'
  when (18..65)
    info['age group'] = 'adult'
  else
    info['age group'] = 'senior'
  end
end

# print out the result
p munsters