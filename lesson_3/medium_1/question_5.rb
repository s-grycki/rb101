# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
# A user passes in two numbers, and the calculator will keep computing 
# the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, 
# he got an error. Something about the limit variable. What's wrong with the code?

=begin
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
=end

# How would you fix this so that it works?

=begin
This method is trying to access a variable outside of its own scope. The reason
this causes an error is because methods have a self-containing scope. They can
only access outside ordinary variables if they're passed in as arguments. This
could be fixed by passing limit as an argument or declaring it inside the method.
=end



def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}" # => result is 13