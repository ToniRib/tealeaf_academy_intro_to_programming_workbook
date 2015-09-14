# Easy Questions - Quiz 1 - Exercise 4

### Question
The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

```
numbers = [1, 2, 3, 4, 5]
```

What would the following return?

```
numbers.delete_at(1)
numbers.delete(1)
```

### Answer
numbers.delete_at(1) will remove the item at index 1, which in this case is 2. The number 2 will be returned, and numbers array will be modified so it is now equal to [1, 3, 4, 5] although that array is not returned by the method.

numbers.delete(1) will look for an item matching the number 1 to remove. The number 1 will be returned, and the numbers array will be modified so it is now equal to [2, 3, 4, 5] assuming you started with the original [1, 2, 3, 4, 5] although this array is not returned by the method.