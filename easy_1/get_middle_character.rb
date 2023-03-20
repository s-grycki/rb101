=begin
Problem: Write a method that takes a non-empty string argument,
and returns the middle character(s) of the string.
If argument has an odd length, return one character.
If argument has an even length, return two characters.

-Input: String
-Output: 1 or 2 string characters

-Rules:
-String must not be empty
-1 character returned if odd
-2 characters returned if even

Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

Data Structures:
String

Algorithm:
GET string
RETURN IF string is empty
SET middle_character = string.length / 2
IF string.odd?
  RETURN string[middle_character]
IF string.even?
  RETURN string[middle_character, middle_character + 1]
END IF

Code:
=end

def center_of(string)
  return if string.empty?
  middle_character = string.length / 2
  return string[middle_character] if string.length.odd?
  return string[middle_character - 1..middle_character] if string.length.even?
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'