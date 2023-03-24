# Depending on a method to modify its arguments can be tricky:

=begin
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
=end

# Whether the above "coincidentally" does what we think we wanted
# depends upon what is going on inside the method.

# How can we change this code to make the result easier to predict
# and easier for the next programmer to maintain? 
# That is, the resulting method should not mutate either argument,
# but my_string should be set to 'pumpkinsrutabaga'
# and my_array should be set to ['pumpkins', 'rutabaga']

=begin
First of all, writing a method like this is bad practice. This method
should either mutate values as an obvious side effect, or return a new value.
I would alter the program to use a mutating method on the first argument, or
reassign both values and return them.
=end

def tricky_method(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"