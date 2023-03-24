# How could the following method be simplified without changing its return value?

=begin
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
=end

def color_valid(color)
  color == "blue" || color == "green" # Returns true if either is true, false otherwise
end

p color_valid("blue")
p color_valid("green")
p color_valid("red")
p color_valid("yellow")

=begin
The previous method uses a lot of redundant syntax. The above program will simply
return true if either condition is true, false otherwise.
=end