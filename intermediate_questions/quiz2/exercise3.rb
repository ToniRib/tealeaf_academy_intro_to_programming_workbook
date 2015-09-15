# Intermediate Questions - Quiz 2 - Exercise 3

# refactored!
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"

  # don't use the shovel operator & make sure the string is in an array
  an_array_param += ["rutabaga"]

  # ensures both values are returned from the method
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

# ensures both the string & array values are replaced by the values returned
# from the method call
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"