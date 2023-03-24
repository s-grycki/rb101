# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
All have the same object_id.
This looks similar to the last question, but this time we're dealing with an
immutable object: Integers. Unlike with strings, which are mutable in Ruby,
an immutable object is already stored in memory and variables can only point
to the locations of these objects. Therefore, all will have the same object_id.
It's important to know what objects are mutable/immutable in a given language.
=end