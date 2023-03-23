=begin
Problem: Write a method that returns true if all the alphabetic 
characters inside the string are uppercase, false otherwise

-Input: String
-Output: True/false

-Rules
-Ignore non-alphabetic characters

Examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

Data Structures:
String

Algorithm:
GET string
IF string.upcase == original string
  RETURN TRUE
ELSE
  RETURN FALSE
END IF

Code:
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true