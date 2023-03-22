=begin
Problem: Build a program that displays when the user will retire,
and how many years they have to work till retirement

-Input: 2 Integers
-Output: 2 String messages

Example:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

Data Structures:
Integers

Algorithm:
SET CURRENT YEAR = GET time.year
GET current age
GET retire age
SET years left = retire age - current age
PRINT It's (CURRENT YEAR). You will retire in (CURRENT YEAR + years left)
PRINT You only have (years left) years of work to go!

Code:
=end

CURRENT_YEAR = Time.now.year

def prompt(input)
  puts(">> #{input}")
end

def values(string)
  prompt(string)
  gets.chomp.to_i
end

def years_until_retirement(age, retire_age)
  retire_age - age
end

def retire_year(years_left)
  CURRENT_YEAR + years_left
end

age = values('What is your age?')
retire_age = values('At what age would you like to retire?')

years_left = years_until_retirement(age, retire_age)

prompt("It's #{CURRENT_YEAR}. You will retire in #{retire_year(years_left)}.")
prompt("You have only #{years_until_retirement(age, retire_age)} years of work to go!")