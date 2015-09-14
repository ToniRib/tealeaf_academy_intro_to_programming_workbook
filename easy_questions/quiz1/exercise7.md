# Easy Questions - Quiz 1 - Exercise 7

### Question

Fun with gsub:

```
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
```

This gives us a string that looks like a "recursive" method call:

```
"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
```

If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

```
eval(how_deep)
```

what will be the result?

### Answer
It will return 42, since it evaluates the string statement as if it were a line of code to be executed. So number starts out as 2, and then add_eight is called 5 times so it adds 40, resulting in 42.

An additional example would be running

```
eval("add_eight(6)")
```

which would result in 14 being retured.