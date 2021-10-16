=begin
------------------- Problem ---------------------
create a stack and register program within ruby 
input string ouput integers

    n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the register.
    ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value


------------------- Examples --------------------
we have ones good enough here bro

------------------- Data ------------------------
case statments because i rememeber the solution from last time 

------------------- Algorithm -------------------
let us take the string given and split it by spaces and store in stack var
i am going t ocall the split string the commands because i dont want to modify the array while i am working with it 
init stack as an empty array 
then call each on the stack and call case on the ele 
  then preform the operations stated by the rules on it 

init regiester to 0

------------------- Code ------------------------
=end

def minilang(string)
  commands = string.split
  stack = []
  register = 0
  commands.each do |ele|
    case ele
      when 'PUSH' then stack.push(register)
      when 'ADD'  then register += stack.pop
      when 'SUB'  then register -= stack.pop
      when 'MULT' then register *= stack.pop
      when 'DIV'  then register /= stack.pop
      when 'MOD'  then register %= stack.pop
      when 'POP'  then register = stack.pop
      when 'PRINT'then p register
      else        register = ele.to_i
    end
  end
end
   

# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)