=begin
Problem: Create a tip calculator that prompts for bill amount and tip rate.
The program should compute the tip and then
display both the tip and the total amount of the bill.
Format the results so it always prints with 2 decimal places

-Input: Two integers/floats
-Output: Two string messages

-Rules:
-Make sure output always shows 2 decimals

-Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.00
The total is $230.00

-Data Structures:
-Floats

-Algorithm:
SET TIP_CONVERSION = 0.01
GET amount
GET tip percentage
SET tip_total =  ((tip percentage * TIP_CONVERSION) * total)
SET total = tip_total + amount
PRINT the tip is (tip_total) formated to 2 places
PRINT the total is (total) formated to 2 places

-Code:
=end

TIP_CONVERSION = 0.01

def prompt(input)
  puts(">> #{input}")
end

def values(string)
  prompt(string)
  gets.chomp.to_f
end

def calculate_tip(amount, tip)
  (amount * (tip * TIP_CONVERSION))
end

def calculate_total(amount, tip)
  calculate_tip(amount, tip) + amount
end

amount = values('Enter the bill amount (in $)')
tip = values('Enter the tip percentage')

tip_total = calculate_tip(amount, tip)
total = calculate_total(amount, tip)

prompt("The tip is $#{format('%.2f', tip_total)}")
prompt("The total is $#{format('%.2f', total)}")