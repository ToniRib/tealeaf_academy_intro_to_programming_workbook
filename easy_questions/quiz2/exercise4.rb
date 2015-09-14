# Easy Questions - Quiz 2 - Exercise 4

# Original stirng
munsters_description = "The Munsters are creepy in a good way."

# Capitalize just the first letter
puts munsters_description.capitalize

# Swap the case of all the letters
puts munsters_description.swapcase

# Make all the letter lowercase
puts munsters_description.downcase

# Make all the letters uppercase
puts munsters_description.upcase

# Note, if you actually wanted to modify the caller (aka the original string) then
# you could add a ! at the end of each of the four methods to use the self-modifying
# method instead. This was not done here so I could continue to reuse the original
# string without resetting it every time.