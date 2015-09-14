# Easy Questions - Quiz 2 - Exercise 10

# Flintstones array
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Shorten each name to three characters
flintstones.map! { |name| name.slice(0..2) }

# Print out the result
p flintstones