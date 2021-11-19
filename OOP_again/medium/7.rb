=begin
==========================
         Problem
--------------------------
Update your solution to accept a low and high value when you create a GuessingGame object, and use those values to compute a secret number for the game. 
You should also change the number of guesses allowed so the user can always win if she uses a good strategy. You can compute the number of guesses with:
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: use original solution and ask for a high and low number when you create the game 
	- update the amount of guesses you need by computing the guesses with a algorithm provided 
-  Inputs: a low number, a high number, and a guess 
-  Output: a message depending on the context of the input 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- highnum, lownum, guesses 
--------------------------
**Implicit Requirements:**
--------------------------
you must use algo to create the amount of guesses 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
just regular integers 
--------------------------
       Algorithm
--------------------------
1. create the target number with a method you call before the loop 
	- create a two loop structure you break out of when you get a valid number 
		- actually jsut make one loop for the high number and break out if its higher than the low num 
	- create two new instance vars that represent the high and low  
2. create the amount of guesses with a method 
--------------------------
          Notes
--------------------------

=end


class GuessingGame

	def play
		display_welcome_message
		get_low_and_high
		create_target(low, high)
		create_guesses
		loop do 
			hey_guess
			make_guess
			display_after_guess_message
			break if win? || no_guesses?
		end
	end

	private 

	attr_accessor :guesses, :attempt, :target, :high, :low

	def initialize
		@target = nil
		@guesses = nil 
		@attempt = nil 
		@high = nil 
		@low = nil 
	end

	def create_guesses
		self.guesses = Math.log2(size_of_range).to_i + 1
	end

	def create_target(low, high)
		self.target = (low..high).to_a.sample 
	end

	def get_low_and_high
		loop do 
			puts "set the low number "
			self.low = gets.chomp.to_i
			break if valid_num?(low)
			"puts thats not a valid number"
		end
		loop do 
			puts "set the high number "
			self.high = gets.chomp.to_i
			break if high > low && valid_num?(high)
			puts "thats now a valid number, high num must be larger than low num"
		end
	end

	def size_of_range
		high - low 
	end

	def valid_num?(num)
		num.to_s.to_i == num 
	end

	def display_welcome_message
		puts "lets play a game!!"
		puts "this is the guessing game"
	end

	def hey_guess
		puts "guess a number between #{low}-#{high}"
	end

	def display_after_guess_message
		if win?
			puts "Congratulations you win! the number was #{target}" 
		elsif no_guesses?
			puts "No more guesses. You lose! the number was #{target}"
		else
			puts high? ? "your guess is too high" : "your guess is too low"
			puts "you have #{guesses} guesses left"
		end
	end

	def win?
		target == attempt
	end

	def no_guesses?
		guesses == 0 
	end
	
	def high?
		attempt > target
	end

	def make_guess
		loop do 
			self.attempt = gets.chomp.to_i
			
			break if valid_guess?
			puts "invalid guess guess again"
		end
		self.guesses -= 1
	end

	def valid_guess?
		attempt >= low && attempt <= high
	end
end

game = GuessingGame.new
game.play
