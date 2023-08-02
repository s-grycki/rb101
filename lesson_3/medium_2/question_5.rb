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

# Whether the above "coincidentally" does what we think we wanted depends 
# upon what is going on inside the method.

# How can we change this code to make the result easier to predict and easier 
# for the next programmer to maintain? That is, the resulting method should not
# mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and
# my_array should be set to ['pumpkins', 'rutabaga']

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# When we reassign the parameter variables inside the method, they will be
# pointing to new values. This means that we have to return them and use
# variable assignment on the method calls in order to use them outside of
# the method. We have two values we want to return. This means we have to use
# parallel assignment and explicitly return a comma seperated list of values as
# the last line in our method. If we don't explicitly return in this case, then
# Ruby thinks we're doing parallel assignment and will complain that it's expecting '='
