=begin
Problem: Ask for user name. The program will then greet the user.
If the user writes "name" then the computer yells back

-Input: String
-Output: String message

Examples:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

Data Structures:
-String

Algorithm:
GET name
IF final character == "!"
  name = (name - "!").uppercase
  PRINT "Hello (name). Why are we screaming?".uppercase
ELSE
  PRINT Hello (name).
END IF

Code:
=end

def prompt(input)
  puts(">> #{input}")
end

def greeter(name)
  name.chomp!
  if name[-1] == '!'
    name.chop!.upcase!
    prompt("Hello #{name}. Why are we screaming?".upcase)
  else
    prompt("Hello #{name}.")
  end
end

prompt('What is your name?')
name = gets

greeter(name)