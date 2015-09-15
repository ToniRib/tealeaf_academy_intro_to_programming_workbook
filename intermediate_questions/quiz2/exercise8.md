# Intermediate Questions - Quiz 2 - Exercise 8

### Question
Consider these two simple methods:

```
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
```

What would be the output of this code:

```
bar(foo)
```

### Answer
"no"

The output is "no" because when bar is called, it calls foo, which defaults to using the param = "no" since it is called with no arguments. However, foo always returns "yes". This means that "yes" is passed in as the param argument to bar, so since "yes" does not equal "no", the ternary operator evaluates to "no".