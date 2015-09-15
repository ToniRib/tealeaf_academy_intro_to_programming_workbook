# Intermediate Questions - Quiz 3 - Exercise 4

### Question
To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

```
def tricky_method_two(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```

### Answer
The output will be:

My string looks like this now: rutabaga
My array looks like this now: ['pumpkins']

The array inside of the method gets set to ['pumpkins', 'rutabaga'], but that is a whole new object inside of the method, so the outside variable my_array is still the same. The gsub! method with the ! modifies the string directly, causing the object on the outside to become the new string. If you remove the ! and use the gsub method, the outside string will remain unchanged by the method.