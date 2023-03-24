# What is the output of the following code?

answer = 42

def mess_with_it(some_number) # 42
  some_number += 8 # return 50
end

new_answer = mess_with_it(answer) # 50 = mess_with_it(42)

p answer - 8 # 42 - 8

=begin
This program will output 34. A new variable is assigned to the method call that
passes 42 as an argument, which returns the value 50. However, nothing further is
done with this value as the program is using the original variable declared
=end