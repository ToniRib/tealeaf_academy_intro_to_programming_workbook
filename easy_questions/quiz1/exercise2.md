# Easy Questions - Quiz 1 - Exercise 2

### Question
Describe the difference between ! and ? in Ruby.

### Answer
! is both a 'not' operator as in !true = false and is used at the end of some methods (as a different method) to indicate that the method will mutate the caller. However, as explained in the Introduction to Programming book, in the case of method names, it isn't really added to the method, it indicates a whole new method, and even some methods without a ! will mutate the caller. So essentially, it is just the 'not' operator.

? used with a : indicates the 'ternary' operator which is like a short-circut to the if statement where there are only two options (based on a boolean value).

### Additional Questions
And explain what would happen in the following scenarios:

1. what is != and where should you use it?
	- != means 'not equal' and you can use it when comparing items if you want a boolean value returned
2. put ! before something, like !user_name
	- if we assume for this example that user_name is truthy, then !user_name would return the opposite which is false. ! in front of an object or variable will return the opposite of the boolean equivalent.
3. put ! after something, like words.uniq!
	- This is sort of a trick question, because ! in this case isn't an operator that will simply convert any method to a method that modifies the caller. uniq and uniq! are actually two separate array methods. There isn't a ! equivalent for every method. Ruby documentation should be consulted to know if a method with a ! at the end exists.
4. put ? before something
	- You can't really put ? before something unless you're trying to use the ternary operator. For example, you can use true ? "this value is true" : "this value is false" and "this value is true" would be returned. However, something like ?true will result in an error.
5. put ? after something
	- Similar to answer 3, you can't just add a ? to the end of something (like a method) and expect it to suddenly check for something. Some ruby methods end with a ? and some don't, but the ruby documentation needs to be consulted.
6. put !! before something, like !!user_name
	- Similar to answer 2, except !!user_name will return true if user_name is truthy or false if user_name is falsy. !! before a variable will return the boolean equivalent of that variable.