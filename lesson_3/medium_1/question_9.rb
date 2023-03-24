# Consider these two simple methods:
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

=begin
"no". First, the program invokes the foo method to distill the argument down to
a comprehensible value.Foo will always return "yes". bar is then called with
the argument "yes" to override the default parameter. The ternary operator
will default to the second option since the tested value is false. This returns
the value of "no"
=end