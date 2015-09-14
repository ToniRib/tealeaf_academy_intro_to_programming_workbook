# Intermediate Questions - Quiz 1 - Exercise 1

# Program outputs ASCII art using the phrase 'The Flintstones Rock!'

# initialize the string
flintstones = 'The Flintstones Rock!'

# create the art
10.times do
  0.upto(2) do |i|
    puts ' '*i + flintstones
  end
end

# Note: this isn't what the provided solution to the question implies, but it is
# how I interpreted the question based on the way it is written.