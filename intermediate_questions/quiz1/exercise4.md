# Intermediate Questions - Quiz 1 - Exercise 4

### Question
What happens when we modify an array while we are iterating over it? What would be output by this code?

```
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
```

What would be output by this code?

```
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
```

### Answer
The first set of code would print a 1 and then a 3 and return the array [3, 4]. During the first iteration (number = 1), it outputs the number 1 and then removes the 1 from the front of the array. numbers is now equal to [2, 3, 4]. However, because the .each iterator has already gone through once, it now jumps to ths second slot in the array which is now 3, not 2. So in the next iteration, the number 3 is printed and the number 2 is removed by the shift method. At that point, the .each iterator would be looking to jump tot he third slot in the array, but the numbers array is only equal to [3, 4] so there is no third slot and it exits the loop.

The second set of code would print a 1 and then a 2 and return the array [1, 2]. This is similar to the first example, each for each time a number is removed from the end of the array, starting with the number 4. Thus, after the numbers 4 and 3 are removed, the .each iterator cannot move onto the third slot of the array because it no longer exists, so it is forced to exit.