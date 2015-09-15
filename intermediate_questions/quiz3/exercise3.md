# Intermediate Questions - Quiz 3 - Exercise 3

### Question
Study the following code and state what will be printed...and why:

```
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```

### Answer
The output will be:

"My string looks like this now: pumpkins"
"My array looks like this now: ["pumpkins", "rutabaga"]

The += operator creates a new string and stores it to the variable named a_string_param which lives only within the scope of the method. Thus, my_string is not changed. As for the array, the << modifies the array itself directly, and since an_array_param points to my_array inside of the method, my_array gets modified by the shovel operator.