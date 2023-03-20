=begin
  P: Problem
		Write a method that takes two arguments, a string and a positive integer, 
		and prints the string as many times as the integer indicates.

		-Input: String, Integer
		-Output: String (integer) times
		
		E: Examples
		Input: repeat('Hello', 3)
		Output: Hello
          Hello
          Hello

  D: Data Structures
		-String

		A: Algorithm
		- GET the string and integer input
		- PRINT string integer times

		C: Code
=end

def repeat(string, integer)
  integer.times {puts string}
end

repeat('Hello', 3)
