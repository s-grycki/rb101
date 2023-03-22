=begin
Problem: Ask the user for an integer greater than 0,
then ask if user wants to determine sum or product of
numbers between 1 and entered integer

-Input: Integer greater than 0
-Output: String with final value

-Rules:
-Inputs must be greater than 0
-Operations should be performed on every number beyond input

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

Data Structures:
-Integer, Range, Array

Algorithm:
GET number > 0
SET total = 0
RETURN error IF number is 0 OR negative
PRINT Enter s for sum. Enter p for product
RETURN error IF input != s OR p
IF input == 's'
  FOR each val IN (1..number)
    total += val
  END LOOP
ELSE
  FOR each val IN (1..number)
    total *= val
  END LOOP
END IF

PRINT sum of integers between 1 and (number) is (total) IF input == 's'
PRINT product of integers between 1 and (number) is (total) IF input == 'p'

Code:
=end

def prompt(input)
  puts(">> #{input}")
end

def check_int
  loop do
    prompt('Please enter an integer greater than 0:')
    int = gets.chomp.to_i
    int.positive? ? (break int) : next
  end
end

def prompt_command
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  gets.chomp.downcase
end

def sum(int)
  (1..int).to_a.inject(:+)
end

def product(int)
  (1..int).to_a.inject(:*)
end

def sum_or_product(int)
  loop do
    ans = prompt_command
    (break prompt("The sum of the integers between 1 and #{int} is #{sum(int)}") if ans.start_with?('s'))
    (break prompt("The product of the integers between 1 and #{int} is #{product(int)}") if ans.start_with?('p'))
    prompt('Invalid input. Please try again')
  end
end

int = check_int
sum_or_product(int)