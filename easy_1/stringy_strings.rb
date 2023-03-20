=begin
Problem: Write a method that takes a positive integer, 
and returns a string of a;ternating 1s and 0s, always starting with 1
The length of the string should match the given integer.
The method should take an optional second argument that defaults to 1
If it's set to 0, the order of 1s and 0s should reverse

-Input: Integer
-Output: String

-Rules:
-New string must start with 1
-String index values should alternate 1s and 0s
-Length of string should match given integer

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'

Data Structures:
Integer, String

Algorithm:
GET integer value && optional start setter
SET new string variable
FOR each int IN integer
  int += 1 IF start = 0
  APPEND '1' IF int is even
		APPEND '0' IF int is odd
END LOOP
RETURN new string

Code:
=end

def stringy(int, start = 1)
  binary_string = String.new
  int.times do |i|
    i += 1 if start == 0
    number = i.even? ? '1' : '0'
    binary_string << number
  end
  binary_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'