=begin
Problem: Write a method that takes two arguments, a positive integer and a boolean,
and calculates the bonus for a given salary.
If boolean is true, bonus is half salary amount. If boolean is false, bonus is 0

-Input: Integer, boolean
-Output: Integer

-Rules:
-Half salary bonus if true
-No bonus if false

Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

Data Structures:
-Integer

Algorithm:
GET salary and boolean
IF boolean == true
		RETURN salary / 2
ELSE
  RETURN 0
END IF

Code:
=end

def calculate_bonus(salary, boolean)
  boolean ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000