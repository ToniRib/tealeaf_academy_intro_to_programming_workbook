# Intermediate Questions - Quiz 2 - Exercise 5

### Question
What is the output of the following code?

```
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
```

### Answer
The output is 34. Even though the += operator modifies the variable some_number within the scope of the mess_with_it method, only new_answer is assigned this new value outside of the method. Therefore, answer is still equal to 42, so when you subtract 8, you get 34.