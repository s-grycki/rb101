=begin
Problem: Use the multiply method from multiplying_two_numbers.
Write a method that computes the power of its argument.

-Input: Two integers
-Ouput: First number raised to second number

Examples:
power_of_n(5, 3) # => 125
power_of_n(-8, 5) # => -32768
power_of_n(10, -1) # => 1/10
power_of_n(10) # => 10

Algorithm:
GET int1
GET int2
RETURN int1 ** int2

=end

# Integer method that returns number raised to a power
def multiply(num, n_times)
  num.pow(n_times)
end

# Creates counter with default of 1
def power_of_n(num, n_times = 1)
  multiply(num, n_times)
end

p power_of_n(5, 3) # => 125
p power_of_n(-8, 5) # => -32768
p power_of_n(10, -1) # => 1/10
p power_of_n(10) # => 10