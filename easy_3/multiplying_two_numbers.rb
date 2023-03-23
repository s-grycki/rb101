=begin
Problem: Get two arguments, multiply them together,
and return the result

-Input: Two arguments
-Output: Two arguments multiplied

Examples:
multiply(5, 3) == 15
"hi" * 2   # => "hihi"
['hi', 'there'] * 2 => ["hi", "there", "hi", "there"]
2 * ['hi', 'there'] => Error

Algorithm:
GET value 1
GET value 2
RETURN value1 * value2

Code:
=end

def multiply(val1, val2)
  val1 * val2
end

p multiply(5, 3) == 15
p multiply('hi', 2) == 'hihi'
p multiply(['hi', 'there'], 2) == %w[hi there hi there]