# Intermediate Questions - Quiz 1 - Exercise 2

# Program provides a count of the number of times each character occurs
# in the given string. Counts are placed in a hash.

# Original string
statement = "The Flintstones Rock"

# Initialize the hash
letter_count = {}

# Go through each upper & lower case letter and count the occurences
('A'..'z').each do |letter|
  frequency = statement.count(letter)
  # If the letter appears at least once, add its count to the hash
  letter_count[letter] = frequency if frequency > 0
end

# Print the result
p letter_count