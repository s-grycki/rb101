=begin
Problem: Prompt the user for two positive integers.
Print the results of the following operations on the two inputs:
Addition, subtraction, product, quotient, remainder, and power.
Do not worry about input validation.

-Input: Two integers
-Output: 6 operations on two integers

-Example:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

Data Structures:
Integers

Algorithm:
PRINT enter first number
num1 = gets.chomp.to_i
PRINT enter second number
num2 = gets.chomp.to_i
PRINT int1 + int2 = ___
PRINT int1 - int2 = ___
PRINT int1 * int2 = ___
PRINT int1 / int2 = ___
PRINT int1 % int2 = ___
PRINT int1 ** int2 = ___

Code:
=end

def prompt(input)
  puts("==> #{input}")
end

def values(string)
  prompt("Enter the #{string} value:")
  gets.chomp.to_i
end

int1 = values('first')
int2 = values('second')

%i[+ - * / % **].each do |op|
  prompt("#{int1} #{op} #{int2} = #{[int1, int2].inject(op)}")
end