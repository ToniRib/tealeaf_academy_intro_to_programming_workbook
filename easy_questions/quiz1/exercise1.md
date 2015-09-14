# Easy Questions - Quiz 1 - Exercise 1

### Question
What would you expect the following code to print out?

```
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

### Answer
The code will print out
1
2
2
3
and return nil because .uniq does not mutate the caller, so the variable numbers is unchanged.