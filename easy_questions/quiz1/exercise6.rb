# Easy Questions - Quiz 1 - Exercise 6

# original string
famous_words = "seven years ago..."

# method one
famous_words.insert(0, "Four score and ")
puts famous_words

# reset to original string
famous_words = "seven years ago..."

# concatenate the strings
puts "Four score and " + famous_words

# reset to original string
famous_words = "seven years ago..."

puts "Four score and " << famous_words