# What do you expect to happen when the greeting variable
# is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

p greeting

=begin
greeting = nil.
The if conditional will never execute because everything in Ruby
is truthy except for false and nil. The program then looks for a
variable named greeting, and finds one without a value. Under normal
circumstances, this would be an undefined method or local variable exception.
However, a local variable greeting WAS initialized in an if clause,
even if the conditional never executed, the local variable is set to nil.
=end