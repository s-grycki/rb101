=begin
Problem: Build a program that randomly generates user age.
Ask the user for a name. If none is supplied, then use Teddy.
To get the age, generate a random number between 20 - 200

-Input: A random number (20-200)
-Output: (name) is _ years old!

-Example:
Teddy is 69 years old!

-Data Structures:
String, Integer

-Algorithm:
GET name
GET integer 20-200
IF name is empty
  name = 'Teddy'
END IF
PRINT message

Code:
=end

def message(name, int)
  name = 'Teddy' if name.empty?
  puts "#{name} is #{int} years old!"
end

def your_name
  puts 'Please enter a name: '
  gets.chomp
end

name = your_name
int = rand(20..200)
message(name, int)