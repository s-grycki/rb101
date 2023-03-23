=begin
Problem: Write a method that returns true if input passed is a palindrome.
False otherwise.

-input: String
-Output: true/false

-Rules:
-Case matters
-All characters counted

Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
palindrome?([356653]) == true

Algorithm:
GET string
IF string.reverse == string
  RETURN TRUE
ELSE
  RETURN FALSE
END IF

Code:
=end

def palindrome?(input)
  return true if input.reverse == input
  
  false
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([356653]) == true