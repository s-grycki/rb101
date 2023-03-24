# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
# Review the String#slice! documentation, and use that method to make the return value 
# "Few things in life are as important as ". But leave the advice variable as 
# "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

p advice.slice!("Few things in life are as important as ")
p advice

# String#slice is a non-destructive method. That means this method call
# would still return the same value, but it would leave the original caller as is