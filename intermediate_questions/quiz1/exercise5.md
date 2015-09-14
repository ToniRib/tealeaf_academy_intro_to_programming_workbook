# Intermediate Questions - Quiz 1 - Exercise 5

### Question
Alan wrote the following method, which was intended to show all of the factors of the input number:

```
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end
```

Alyssa noticed that this will fail if you call this with an input of 0 or a negative number and asked Alan to change the loop. How can you change the loop construct (instead of using begin/end/until) to make this work? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

### Answer
Chang the code to use a while loop which checks to ensure the dividend is greater than 0. Thus, the loop will never start if the dividend is 0 or less than 0.

```
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
```

### Bonus Question 1
What is the purpose of the number % dividend == 0 ?

### Bonus Answer 1
It ensures only whole numbers are used, thus you won't get a divisor of something like 2.5 or 3.8 which are true integer divisors.

### Bonus Question 2
What is the purpose of the second-to-last line in the method (the divisors before the method's end)?

### Bonus Answer 2
Ruby always returns the last thing executed in a method, so you need to ensure that the variable divisors is the last thing executed in the method so it can be returned.
