=begin
Problem: Build a program that asks a user for the length and width
of a room in feet and then displays the results in
square feet, square inches, and square centimeters.
Assume all inputs are valid

-Input: Integer/float
-Output: 3 integer/float values

-Rules
-Outputs rounded to 2 decimal points

Examples:
Enter the length of the room in feet:
10
Enter the width of the room in feet:
7
The area of the room is ___ square feet, ___ square inches, ___ square centimeters.

Data Structures:
Float

Algorithm:
SET SQFEET_TO_SQINCHES = 144
SET SQINCHES_TO_SQCENTIMETERS = 6.4516
GET length
GET width
SET square_feet = length * width
SET square_inches = square_feet * SQFEET_TO_SQINCHES
SET square_centimeters = square_inches * SQINCHES_TO_SQCENTIMETERS
PRINT square_feet, square_inches, square_centimeters rounded(2)

Code:
=end

SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCENTIMETERS = 6.4516

def prompt(input)
  puts(">> #{input}")
end

def values(string)
  prompt("Enter the room #{string} in feet:")
  gets.chomp.to_f
end

def square_feet(length, width)
  length * width
end

def square_inches(length, width)
  square_feet(length, width) * SQFEET_TO_SQINCHES
end

def square_centimeters(length, width)
  square_inches(length, width) * SQINCHES_TO_SQCENTIMETERS
end

length = values('length')
width = values('width')

s_feet = square_feet(length, width).round(2)
s_inches = square_inches(length, width).round(2)
s_centimeters = square_centimeters(length, width).round(2)

prompt("The area of the room is #{s_feet} square feet.")
prompt("#{s_inches} square inches.")
prompt("#{s_centimeters} square centimeters.")