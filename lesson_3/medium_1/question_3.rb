# Alan wrote the following method,
# which was intended to show all of the factors of the input number:

=begin
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
=end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. 
# How can you make this work without using the begin/end until construct? 
# Note that we're not looking to find the factors for 0 or negative numbers, 
# but we just want to handle it gracefully instead of raising an exception 
# or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []
  until divisor <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(100) # => [1, 2, 4, 5, 10, 20, 25, 50, 100]
p factors(0) # => []
p factors(-100) # => []

# Bonus 1: What is the purpose of the number % divisor == 0 ?
# This is the Ruby modulo operator. It works similar to remainder,
# with the exception that a negative return is based on the sign of the 2nd number.
# With the #remainder method, this is dependant on the 1st number



# Bonus 2: What is the purpose of the second-to-last line (line 8) in the method
# (the factors before the method's end)?
# This will make sure that the method always returns the final value of factors