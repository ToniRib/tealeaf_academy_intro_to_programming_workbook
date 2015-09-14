# Easy Questions - Quiz 1 - Exercise 8

### Question

If we build an array like this:

```
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
```

We will end up with this "nested" array:

```
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
```

Make this into an un-nested array.

### Answer
flinstones.flatten!