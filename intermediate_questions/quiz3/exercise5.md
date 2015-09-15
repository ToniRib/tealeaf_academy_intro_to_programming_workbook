# Intermediate Questions - Quiz 3 - Exercise 5

### Question
How could the unnecessary duplication in this method be removed?

```
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
```

### Answer
The ruby interpreter automatically evaluates statements for true/false, so the whole if statement can be done away with and either true or false will be returned.

```
def color_valid(color)
  color == "blue" || color == "green"
end
```