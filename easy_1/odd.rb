=begin
P: Problem
Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

-Input: Integer
-Output: Boolean

-Rules
-Not allowed to use #odd? or #even? methods

E: Examples
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

D: Data Structure
-Integer

A: Algorithm
GET integer value
IF integer % 2 == 0
  FALSE
ELSE
  TRUE
END IF

C: Code
=end

def is_odd?(int)
  int % 2 != 0
end



puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true