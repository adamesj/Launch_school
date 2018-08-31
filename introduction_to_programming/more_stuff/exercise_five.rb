# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# The first line of the error tells us that the method execute was expecting one argument
# but received none. The error occured due to the call made in the 'main' context on line 5.
# Line 5 is where the code is executed.
# Here we need the ampersand (&) as part of the argument in order to specify to the method
# that we are passing in a block.