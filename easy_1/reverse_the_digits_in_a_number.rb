=begin
Problem: Wrtie a method that takes a positive integer as an argument
and returns that number with digits reversed.
Don't worry about arguments with leading 0's (octal numbers in Ruby)

-Input: Integer
-Output: Reversed integer

-Rules:
-Integer must be positive
-Ignore leading zeros

Examples:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Data Structures:
Integers, Array

Algorithm:
GET integer input
SET integer = abs(integer)
SET integer = array value reversed
SET array = array.join.to_i

Code:
=end

def reversed_number(int)
  int = int.abs.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(-12003) == 30021
p reversed_number(1) == 1