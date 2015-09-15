# Intermediate Questions - Quiz 2 - Exercise 4

# original string
sentence = "Humpty Dumpty sat on a wall."

# reverse the words in the sentence and add a period at the end
puts sentence.split(/\W/).reverse!.join(' ') + '.'