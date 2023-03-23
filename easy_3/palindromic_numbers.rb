=begin
Problem: Write a method that returns true
if argument is palindromic, false otherwise.

-Input: Integer
-Output: True/false

Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

Data Structures:
Integer, array

Algorithm:
GET integer
SET integer = reversed array -> spaceless string -> integer
IF integer = integer reversed
  RETURN TRUE
ELSE
  RETURN FALSE
END IF

Code:
=end

def palindromic_number?(int)
  int.digits.join.to_i == int
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true