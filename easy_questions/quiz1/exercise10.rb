# Easy Questions - Quiz 1 - Exercise 10

# original array
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# create the hash
flintstones_hash = {}
flintstones.each_with_index { |name, index| flintstones_hash[name] = index }

# print out the hash
p flintstones_hash