# Easy Questions - Quiz 2 - Exercise 9

# Flintstones array
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Shorten each name to three characters
flintstones.map! do |name|
  name.slice(0..2)
end

# Print out the result
p flintstones