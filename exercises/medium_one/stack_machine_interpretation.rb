def minilang(string)
  register = 0 # initialize register
  stack = [] # initialize stack

  inputs = string.split # split string into an array of separate elements
  inputs.each do |input|
    case input
    when 'ADD'   then register += stack.pop
      # Pops a value from the stack and adds it to the register value, storing the result in the register.
    when 'SUB'   then register -= stack.pop
      #  Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    when 'MULT'  then register *= stack.pop
      #  Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    when 'DIV'   then register /= stack.pop
      # Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    when 'MOD'   then register %= stack.pop
      # Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    when 'POP'   then register = stack.pop
      # Remove the topmost item from the stack and place in register
    when 'PUSH'  then stack.push(register)
      # Push the register value on to the stack. Leave the value in the register.
    when 'PRINT' then puts register
      # Print the register value
    else
      register = input.to_i
    end
  end
end


# MULT operation in a stack-and-register-language
# 1 - multiples the stack value (last element) with the register value
# 2 - removes the value from the stack
# 3 - stores the result back in the register

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
