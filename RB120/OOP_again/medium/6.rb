=begin
==========================
         Problem
--------------------------
Create an object-oriented number guessing class for numbers in the range 1 to 100, 
with a limit of 7 guesses per game. The game should play like the example 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - limit of 7 guesses per game 
	- guess is between range of 1-100
-  Inputs: an integer representing a guess
-  Output: a printed statement that will have to do with the game logic
	- guess again
	- you won 
	- you lost out of guesses 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
guesses outside of range shoould produce an error 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
an integer of a guess
--------------------------
       Algorithm
--------------------------
1. create initalize method 
	- make targ_num instance var
	- make number of guesses instacne var 
	- create target getter
	- create guesses getter and setter 
2. create display message method
	- create an else if to print win first
	- then use logic to break out of the game and print lose message if no guesses 
	- use the else to 
3. create game loop 

--------------------------
          Notes
--------------------------
create make attempt method to check if when you make a guess its the target and decreases guesses 
=end

class GuessingGame

	def play
		display_welcome_message
		loop do 
			hey_guess
			make_guess
			display_after_guess_message
			break if win? || no_guesses?
		end
	end

	private 

	attr_accessor :guesses, :attempt
	attr_reader :target

	def initialize
		@target = (1..100).to_a.sample 
		@guesses = 7 
		@attempt = nil 
	end

	def display_welcome_message
		puts "you wanna play a game??"
		puts "this is the guessing game"
	end

	def hey_guess
		puts "guess a number between 1-100"
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
		attempt >= 1 && attempt <= 100
	end
end

game = GuessingGame.new
game.play


=begin 
You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!

You won!

game.play

You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!
=end