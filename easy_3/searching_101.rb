=begin
Problem: Get 6 numbers from the user.
Print a message that states if the 6th number
appears amongst the first 5 numbers

-Input: 5 numbers, 6th number for checking
-Output: String with 6 numbers

-Rules:
-5 numbers are for storage
-1 number is for checking

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

Data Sctructures:
Hash, Array, Integers

Algorithm:
SET hash w/ keys = number & value = following letters
SET new array
i = 0
WHILE 5 > i
  PRINT enter the hash.key[i] hash.value[i] number:
  GET input
  IF input != an integer
    PRINT error message
    NEXT
  ELSE
    new array += input
  END IF
END LOOP
RETURN new array
GET 6th number
IF 6th numbers is in new array
  PRINT 6th number is in new array
ELSE
  PRINT 6th number is not in new array
END

Code:
=end

NUM_VALUES = {
  1 => 'st',
  2 => 'nd',
  3 => 'rd',
  4 => 'th',
  5 => 'th'
}

def prompt(input)
  puts(">> #{input}")
end

def populate_array
  num_array = []
  5.times do |i|
    prompt("Enter the #{NUM_VALUES.keys[i]}#{NUM_VALUES.values[i]} number:")
    int = gets.chomp
    (next prompt('Please enter a whole number') if int.to_i.to_s != int)
    num_array << int.to_i
  end
  num_array
end

def num_get
  prompt('Enter the last number:')
  gets.chomp.to_i
end

def num_check(num_array, num)
  if num_array.include?(num)
    prompt("The number #{num} appears in #{num_array}.")
  else
    prompt("The number #{num} does not appear in #{num_array}.")
  end
end

num_array = populate_array
num = num_get
num_check(num_array, num)