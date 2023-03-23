=begin
Problem: Write another method that returns true if string passed
is a palindrome, false otherwise.
This time, the method should be case-insensitive,
and ignore non-alphanumeric characters

-Input: String
-Output: true/false

-Rules:
-Case-insensitive
-Ignores non-alphanumeric characters

Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

Data Structures:
Strings

Algorithm:
GET string
SET string to downcase
DELETE non-alphanumeric characters
IF new string == original string
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

def real_palindrome?(input)
  palindrome?(input.downcase.delete('^a-z0-9'))
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false