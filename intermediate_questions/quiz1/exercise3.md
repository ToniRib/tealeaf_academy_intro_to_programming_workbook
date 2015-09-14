# Intermediate Questions - Quiz 1 - Exercise 3

### Question
The result of the following statement will be an error:

```
puts "the value of 40 + 2 is " + (40 + 2)
```

Why is this and what are two possible ways to fix this?

### Answer
The ruby interpreter doesn't know whether it should try to convert the string to a fixnum or the fixnum to a string, so it will result in a TypeError. One way to fix this is by changing it to be:

```
puts "the value of 40 + 2 is " + (40 + 2).to_s
```

This will explicitly tell ruby that the fixnum portion should be converted to a string and then concatenated with the other string.

Additionally, you could fix it by using string interpolation:

```
puts "the value of 40 + 2 is #{40 + 2}"
```