# Intermediate Questions - Quiz 2 - Exercise 7

### Question
Method calls can take expressions as arguments. Suppose we define a function called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

```
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
```

What is the result of the following call?

```
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
```

### Answer
"paper"

Here's a visual breakdown of the answer by steps, starting by evaluating the inner-most call:
1. puts rps(rps(rps("rock", "paper"), "rock"), "rock")
2. puts rps(rps("paper", "rock"), "rock")
3. puts rps("paper", "rock")
4. puts "paper"