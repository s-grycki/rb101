# Alyssa was asked to write an implementation of a rolling buffer. 
# Elements are added to the rolling buffer and if the buffer becomes full,
# then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, 
# "Take your pick. Do you like << or + for modifying the buffer?". 
# Is there a difference between the two, other than what operator
# she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element # => [1, 2, 3, 4, 5, 0]
  buffer.shift if buffer.size > max_buffer_size # Remove first element if array size > max buf
  buffer # => [2, 3, 4, 5, 0]
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element] # => [1, 2, 3, 4, 5, 0]
  buffer.shift if buffer.size > max_buffer_size # Remove first element if array size > max buf
  buffer # => [2, 3, 4, 5, 0]
end

p rolling_buffer1([1, 2, 3, 4, 5], 5, 0)
p rolling_buffer2([1, 2, 3, 4, 5], 5, 0)

=begin
Functionally, these two appear to work the same. The difference is in the behavior
of the operator. + is non-mutating, hence why a new variable was declared to store this value.
<< is mutating, so the value stored in memory was changed. This is why no new assignment was needed.

The first method emulates pass by reference behavior. The second emulates pass by value behavior.

Methods should perform one job - whether this is returning a value or causing a side-effect for
the whole program (printing to the console or mutating a value). The first method violates this
best practice by returning a meaningful value and containing a side effect. The second method is
the better choice.
=end