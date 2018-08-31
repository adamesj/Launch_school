# What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# This code does not print anything to the screen because the block passed in is not being called
# This code will return a Proc object