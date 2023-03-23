=begin
Problem: Ask user to input a word or multiple words
and give back the number of characters.
Soaces should not be counted.

-Input: String
-Ouput: Number of characters in string

-Rules:
-Don't count spaces
-Count other characters (such as , and ')
-Cannot mutate the original string since it's needed for output

Examples
Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".

Data Structures:
String, Array, Integer

Algorithm:
GET string of characters
SET string to array
DELETE each space in array
SET array back to string
SET number = string.length
PRINT There are (number) characters in (string)

Code:
=end

def character_counter(string)
  string.split.join.length
end

print('Please write word or multiple words: ')
string = gets.chomp
count = character_counter(string)
puts("There are #{count} characters in \"#{string}\".")