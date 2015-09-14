# Easy Questions - Quiz 2 - Exercise 8

# Flintstones name array
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with 'Be'
index = flintstones.find_index { |name| name.start_with?('Be') }

# Print out the index
puts index