# Advanced Questions - Quiz 1 - Exercise 1

### Question
What do you expect to happen when the greeting variable is referenced in the last line of the code below?

```
if false
  greeting = “hello world”
end

greeting
```

### Answer
greeting evaluates to nil even though the block didn't get executed. Ruby will initialize variables inside of a block to nil even when that block isn't evaluated instead of throwing an exception.