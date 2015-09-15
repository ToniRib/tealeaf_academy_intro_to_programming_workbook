# Advanced Questions - Quiz 1 - Exercise 5

# method dot_separated_ip_address? checks to see if the
# input_string provided by the user is a valid ip

# define the method to check the ip address
def dot_separated_ip_address?(input_string)

  # split the input string at each dot
  dot_separated_words = input_string.split(".")

  # check the number of elements in the ip address
  if dot_separated_words.length != 4
    puts "#{input_string} does not have the correct number of elements"
    return false
  else

    # go through each of the sections
    while dot_separated_words.size > 0 do
      # get the current word from the end of the array
      word = dot_separated_words.pop
      # check to see if it is a number
      if !is_a_number?(word)
        # if the word is not a number, notify the user
        # and return false
        puts "#{word} is not a valid number"
        return false
      end
    end

    # return true if all numbers are valid
    puts "#{input_string} is a valid ip address"
    true
  end
end

# define the is_a_number? method so this code can run
def is_a_number?(str)
  str.match(/\d/)
end

# examples
dot_separated_ip_address?('12.x.2.21') # should be invalid
dot_separated_ip_address?('24.1.6.76') # should be valid
dot_separated_ip_address?('4.5.5') # should be invalid
dot_separated_ip_address?('1.2.3.4.5') # should be invalid
