# Easy Questions - Quiz 3 - Exercise 4

# original advice string
advice = "Few things in life are as important as house training your pet dinosaur."

# Slice the sentence at the word house
puts advice.slice!(0, advice.index('house'))
puts advice

# Bonus: if you use advice.slice instead of advice.slice! then the advice string will
# remain unchanged.