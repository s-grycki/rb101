=begin
Problem: Write a method that takes a number argument.
If the argument is positive, return the negative value.
If the argument is 0 or negative, return the original number.

-Input: Number
-Output: Number (negative if positive)

Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

Data Structures:
Integer

Algorithm:
GET number
IF number is positive
  RETURN (number - (number * 2))
ELSE
  RETURN number
END IF

Code:
=end

def prompt(input)
  puts(">> #{input}")
end

def num_get
  loop do
    prompt('Enter any whole number')
    int = gets.chomp
    (next prompt('Please enter a whole number') if int.to_i.to_s != int)
    break int.to_i
  end
end

def num_conversion(int)
  return -int if int.positive?

  int
end

int = num_get
puts num_conversion(int)