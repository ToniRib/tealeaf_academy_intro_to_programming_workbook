# Intermediate Questions - Quiz 1 - Exercise 6

### Question
Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

```
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
```

### Answer
Yes, there is a difference besides the two operators. In rolling_buffer1, the user passes in the current buffer array which is modified directly within the method and passed out again at the end. In rolling_buffer2, the user passes in an input_array which the buffer is then created from and this new buffer variable is what is passed out at the end. The original input_array remains unchanged.