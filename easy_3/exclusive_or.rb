=begin
Problem: Write a method named xor that takes two arguments,
and returns true if exactly one argument is truthy, false otherwise.
This should be a boolean result, not a truthy/falsy value returned by &&/||

-Input: Two conditions
-Output: Boolean true/false

-Rules:
-True if only one condition is truthy
-False if both conditions are truthy OR falsy

Examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

Algorithm:
GET condition1
GET condition2
IF condition1 && !condition2 || !condition1 && condition2
  RETURN TRUE
ELSE
  RETURN FALSE
END IF

Code:
=end

def xor?(condition1, condition2)
  return true if (condition1 && !condition2) || (!condition1 && condition2)

  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false