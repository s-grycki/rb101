# What would you expect the following code to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin
1
2
2
3
The caller is not being mutated with numbers.uniq.
It's being assigned to a new array, but since it's not being captured,
there's no way to access it and the original numbers array remains the same.
The puts method prints each element on a seperate line as a string
=end