=begin
==========================
         Problem
--------------------------
create a number guess game that reads like the example below 
the number that is created should be between 1-100
if you guess to low it will tell you
if you guess to high it will tell you
you have a limit of 7 guesses per game 

--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
	- number is between 1-100
	- you have 7 guesses
	- there are specific prompts you must output
	- it must be in OOP style
-  Inputs: a player input number between 1-100
-  Output: a prompt saying either, you won, you lost, or to high, or to low
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
Nouns: guessing game, create number to guess, number of guesses 
Verbs: guess, display win/lose message, display to high/low message, display error message 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------
copy pasta
-  Visual Reference:

--------------------------
     Data Structure
--------------------------

--------------------------
       Algorithm
--------------------------
1. init the guessing game
	- create a number var with rand or sample
2. create player input loop
3. if then statment to display message
4. display winner 
5. put all of this in a play loop to be called to play 

--------------------------
          Notes
--------------------------

=end

class GuessingGame
	@@guesses = 0
	def initialize
		@number = (1..100).sample
	end

	def player_input
		input = nil	
		puts "Please guess a number between 1-100:"
		loop do 
			input = gets.chomp.to_i
			break if (1..100).to_a.include?(input)
			puts "Invalid iput. Please guess a number between 1-100:"
		end
		input 
	end

	def guess
		input = player_input
		if input < @number 
			display_low_msg
		elsif input > @number 
			display_high_msg
		else
			display_win_msg
		end
	end

	def display_guesses_remaining
		puts "you have #{@@guesses} remaining"
	end

	def display_low_msg
		puts "You're guess is too low!"
	end

	def display_high_msg
		puts "You're guess is too high!"
	end

	def display_win_msg
		puts "You guessed the correct number!! #{@number}"
		puts "You win!!!!"
	end

	def play

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