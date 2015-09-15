# Advanced Questions - Quiz 1 - Exercise 2

### Question
What is the result of the last line in the code below?

```
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
```

### Answer
The result is {a: "hi there"} being printed to the terminal. This is because greetings and informal_greeting are actually pointed at the same object. The shovel operator (<<) modifies the original object, which both variable names are pointed at.