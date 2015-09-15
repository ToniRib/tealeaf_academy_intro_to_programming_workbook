# Intermediate Questions - Quiz 3 - Exercise 1

### Question
Predict how the values and object ids will change throughout the flow of the code below:

```
def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer.object_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer.object_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer.object_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer.object_id} inside the block.\n\n"

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"


    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n"
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue "ugh ohhhhh"
end
```

### Answer
For these answers since I am supposed to predict what happens and you can't actually predict the exact number an object id will be equal to, I will use letters to denote some number. A change in letter represents a change in object id.

#### a_outer & a_inner
1. "a_outer is 42 with an id of: 'a' before the block."
2. "a_outer id was 'a' before the block and is: 'a' inside the block."
3. "a_outer inside after reassignment is 22 with an id of: 'a' before and: 'b' after."
4. "a_inner is 22 with an id of: 'b' inside the block (compared to 'b' for outer)."
5. "a_outer is 22 with an id of: 'a' BEFORE and: 'b' AFTER the block."
6. "ugh ohhhhh" (because a_inner only exists inside the block)

#### b_outer & b_inner
1. "b_outer is 'forty two' with an id of: 'c' before the block."
2. "b_outer id was 'c' before the block and is: 'c' inside the block."
3. "b_outer inside after reassignment is 'thirty three' with an id of: 'c' before and: 'd' after."
4. "b_inner is 'thirty three' with an id of: 'd' inside the block (compared to 'd' for outer)."
5. "b_outer is 'thirty three' with an id of: 'c' BEFORE and: 'd' AFTER the block."
6. "ugh ohhhhh" (because b_inner only exists inside the block)

#### c_outer & c_inner
1. "c_outer is [42] with an id of: 'e' before the block."
2. "c_outer id was 'e' before the block and is: 'e' inside the block."
3. "c_outer inside after reassignment is [44] with an id of: 'e' before and: 'f' after."
4. "c_inner is [44] with an id of: 'f' inside the block (compared to 'f' for outer)."
5. "c_outer is [44] with an id of: 'e' BEFORE and: 'f' AFTER the block."
6. "ugh ohhhhh" (because c_inner only exists inside the block)

#### d_outer & d_inner
1. "d_outer is 42 with an id of: 'a' before the block.\n\n"
2. "d_outer id was 'a' before the block and is: 'a' inside the block.\n\n"
3. "d_outer inside after reassignment is 44 with an id of: 'a' before and: 'g' after.\n\n"
4. "d_inner is 44 with an id of: 'g' inside the block (compared to 'g' for outer).\n\n"
5. "d_outer is 44 with an id of: 'a' BEFORE and: 'g' AFTER the block.\n\n"
6. "ugh ohhhhh" (because d_inner only exists inside the block)