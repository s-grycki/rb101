# In other practice problems, we have looked at how the scope of variables
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification 
# of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

=begin
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

one is: one, two is: two, three is: three.
The method here is just reassigning values to copies recieved
by the method, but does nothing with them.
=end



=begin
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

one is: one, two is: two, three is: three.
The method here is just reassigning copied values to strings,
but does nothing with them.
=end



=begin
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

one is: two, two is: three, three is: one.
gsub! is a mutating method. Since strings are mutable in Ruby,
this impacts the variables outside the method since they were
pointing to the same values.
=end