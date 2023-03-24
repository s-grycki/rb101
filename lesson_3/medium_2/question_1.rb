# Every object in Ruby has access to a method called object_id,
# which returns a numerical value that uniquely identifies the object.
# This method can be used to determine whether two variables are pointing to the same object.

# Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
Variables a and c have the same object_id. Variable b has a different object_id.
variable a is assigned a value to be stored in a specific place in memory.
Variable b is also assigned a value to be stored in a specific place in memory.
However, they are two different places in memory that just happen to hold the same string.
Variable c is set to the memory location of variable a.
Therefore, a and c share the same object_id. Variable b has a different one.
=end