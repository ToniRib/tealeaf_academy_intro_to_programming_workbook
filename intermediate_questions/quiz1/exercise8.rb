# Intermediate Questions - Quiz 1 - Exercise 8

# titleize

# define the titleize method, which will make the first letter of each word capitalized
def titleize(string)
  string.split.map { |word| word.downcase.capitalize }.join(' ')
end

# examples
puts titleize("this is a really good book title")
puts titleize("HOW ABOUT THIS BOOK TITLE")