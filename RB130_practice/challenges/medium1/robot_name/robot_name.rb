=begin
==========================
         Problem
--------------------------
make a robot random name generator 
also make a reset funciton that give it a name 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: the name cannot be using a predictable sequence 
	- must have a reset function that resets the name 
	- also make sure that the solution is not using the same name twice if there is a wipe 
-  Inputs: nothing just instantiating a new object 
-  Output: a name when the funciton is called 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
name must have two letters in the front and three numbers in the back 
--------------------------
Examples/Test Cases/Edge's
--------------------------

test suit look 

--------------------------
     Data Structure
--------------------------
I will be working with strings here, I need to make a name funciton and then go from there, 
rememebr the name will have to be generated on instantiation 
--------------------------
       Algorithm
--------------------------
1. make name equal gen_name funciotn on instantiation 
2. generate two random capitol letters 

1. when you do the gen_name function make sure that the name that is eventually chosen is pushed to the array
2. make sure that the name is not returned to the function untill you are sure that the name is not taken 
--------------------------
          Notes
--------------------------

=end

class Robot
	@@names = []
	attr_writer :name 

	def initialize
		@name = gen_name 
	end

	def gen_name 
		new_name = nil 
		until !@@names.include?(new_name) && new_name != nil
			letters = ('AA'..'ZZ').to_a.sample
			numbers = (100..999).to_a.sample
			new_name = "#{letters}#{numbers}"
		end
		@@names << new_name
		new_name
	end

	def name 
		return @name if @name 
		self.name = gen_name
	end

	def reset 
		@@names.delete(name)
		self.name = nil
	end
end

# p Robot.new.name