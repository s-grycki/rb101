=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
put ! before something, like !user_name
put ! after something, like words.uniq!
put ? before something
put ? after something
put !! before something, like !!user_name

! and ? are used to describe expected behavior in Ruby, depending on if it's a prefix or suffix, 
though it doesn't actually determine what a defined method will do. 

1. != is saying not equal to. It should be used when checking for "not" equality
2. ! is saying "not this." It's checking the value for false instead of true
3. This is a mutating method which changes the value pointed to in memory
4. This is part of a ternary check. If evaluated expression is true, then this
5. This is checking if something equates to true or false
6. This is forcing a boolean value return
=end