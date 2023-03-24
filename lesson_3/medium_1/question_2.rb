# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# This statement is being read as trying to add a string to an integer (42).
# The intent seems to be concatenation. That requires converting the integer
# before attempting combination. String interpolation is one way to implicitly
# convert the integer to a string after the mathematical operation.

puts "the value of 40 + 2 is #{(40 + 2)}"