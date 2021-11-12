=begin
==========================
         Problem
--------------------------
create a stack machine interpretation program using OOP
this program needs to throw some errors sometimes
this is just like the exercise that you did in medium small problems 
see the exercise for the list of operations 
the program is issued commands with strings that are passed in and also integers 

a stack machine is a list of programs, that when passed in a command along with the 
integers needed to exucute the commands. It does so, often placing the integer to be operated on in the register
and placing the the commands that are needed to operate in the stack. which is then popped off the stack to be operated on
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
	- register is initialized to 0 
	- needs to throw errors sometimes 
	- commands issued with strings 
	- needs to be in oop 
	- needs to use Object#send
	-	there is an eval method to do the interpretation
-  Inputs: a list of commands and intgers 
-  Output: an integer or error
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
nouns: error, integers, commands, stack, register
verbs: the list of programs, execute 
--------------------------
**Implicit Requirements:**
--------------------------
do a spike of the program 
this needs to be as oop as possible
use object send. 
commands need to be evaluated by a program
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference: see the medium problem

--------------------------
     Data Structure
--------------------------
a string that must be broken up in order to be good for interpretations
--------------------------
       Algorithm
--------------------------
1. create the classes of the nouns
2. create the programs to be executed in the commands class
3. create the collab objects in the minilang class
4. pass the correct collab objects into the methods

create eval method:
1. take the list and each do 
2. validate the input coming in
3. if int then call n 
4. if string then case statement



--------------------------
          Notes
--------------------------

    n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the register.
    ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value
n:
1. take in an integer as arg and a register
2. make register equal n 

push:
1. take in register and stack and push it 

add:
1. pops value from stack and adds it to register
2. store the value in the register
3. take the args and += register with stack pop
=end

require 'pry'

class MyCustomError < StandardError
StackError = 'yes'
end

class Stack
	attr_accessor :arr
	
	def initialize
		@arr = []
	end
end

class Register
	attr_accessor :value

	def initialize
		@value = 0
	end
end

class Commands
	attr_reader :push, :add, :sub, :mult, :div, :mod, :pop, :print

	def n(n, register) 
		register.value = n.to_i
	end

	def PUSH(stack, register)
		stack.arr.push(register.value)
	end

	def ADD(stack, register)
		register.value += stack.arr.pop.to_i
	end

	def SUB(stack, register)
		register.value -= stack.arr.pop.to_i
	end

	def MULT(stack, register)
		register.value *= stack.arr.pop.to_i
	end

	def DIV(stack, register)
		register.value /= stack.arr.pop.to_i
	end

	def MOD(stack, register)
		register.value %= stack.arr.pop.to_i
	end

	def POP(stack, register)
		raise 'There is nothing in the stack!' if stack.arr.size == 0 
		register.value = stack.arr.pop.to_i
	end

	def PRINT(_, register)
		puts register.value
	end	
end

class Minilang
	attr_reader :commands, :register, :stack

	def initialize(list)
		@commands = Commands.new
		@register = Register.new
		@stack = Stack.new
		@list = list.split
	end

	def eval
		@list.each do |str|
			raise "Invalid token: #{str}" if !%(PUSH ADD SUB MULT DIV MOD POP PRINT).include?(str) && str.to_i.to_s != str
			raise "nothing printed; no PRINT command" if !@list.include?('PRINT')
			if is_number?(str)
				commands.n(str, register)
			else
				commands.send(str, stack, register)
			end
			# binding.pry
		end
	end

	def is_number?(str)
		return true if str =~ /\A[-+]?\d+\z/
		false
	end
end



# Minilang.new('PRINT').eval
# 0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)