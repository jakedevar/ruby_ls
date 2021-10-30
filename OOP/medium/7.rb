require 'pry'
class GuessingGame
	def initialize(low, high)
		@high = high 
		@low = low 
		@number = create_number
		@input = nil
		@guesses = number_of_guesses
	end

	def number_of_guesses
		size_of_range = @high - @low
		Math.log2(size_of_range).to_i + 1
	end

	def create_number
	  rand(@low..@high)
	end

	def player_input
		puts "Please guess a number between #{@low}-#{@high}:"
		loop do 
			@input = gets.chomp.to_i
			break if (@low..@high).to_a.include?(@input)
			puts "Invalid input. Please guess a number between #{@low}-#{@high}:"
		end
	end

	def guess
		if @input < @number 
			display_low_msg
		elsif @input > @number 
			display_high_msg
		else
			display_win_msg
		end
	end

	def display_guesses_remaining
		puts "you have #{@guesses} remaining"
	end

	def display_low_msg
		@guesses -= 1
		puts "You're guess is too low!"
	end

	def display_high_msg
		@guesses -= 1
		puts "You're guess is too high!"
	end

	def display_win_msg
		puts "You guessed the correct number!! #{@number}"
		puts "You win!!!!"
	end

	def out_of_guesses?
		if @guesses == 0
			puts "You are out of guesses... You lose!!"
			return true
		end
		false
	end

	def win?
			@input == @number
		end

	def play
		loop do
			binding.pry
			player_input 
			guess
			break if out_of_guesses? || win?
			display_guesses_remaining
		end
		@guesses = number_of_guesses
		@number = create_number
	end
end


game = GuessingGame.new(501, 1500)
game.play
game.play

# You have 10 guesses remaining.
# Enter a number between 501 and 1500: 104
# Invalid guess. Enter a number between 501 and 1500: 1000
# Your guess is too low.

# You have 9 guesses remaining.
# Enter a number between 501 and 1500: 1250
# Your guess is too low.

# You have 8 guesses remaining.
# Enter a number between 501 and 1500: 1375
# Your guess is too high.

# You have 7 guesses remaining.
# Enter a number between 501 and 1500: 80
# Invalid guess. Enter a number between 501 and 1500: 1312
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 501 and 1500: 1343
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 501 and 1500: 1359
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 501 and 1500: 1351
# Your guess is too high.

# You have 3 guesses remaining.
# Enter a number between 501 and 1500: 1355
# That's the number!

# You won!

# game.play
# You have 10 guesses remaining.
# Enter a number between 501 and 1500: 1000
# Your guess is too high.

# You have 9 guesses remaining.
# Enter a number between 501 and 1500: 750
# Your guess is too low.

# You have 8 guesses remaining.
# Enter a number between 501 and 1500: 875
# Your guess is too high.

# You have 7 guesses remaining.
# Enter a number between 501 and 1500: 812
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 501 and 1500: 843
# Your guess is too high.

# You have 5 guesses remaining.
# Enter a number between 501 and 1500: 820
# Your guess is too low.

# You have 4 guesses remaining.
# Enter a number between 501 and 1500: 830
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 501 and 1500: 835
# Your guess is too low.

# You have 2 guesses remaining.
# Enter a number between 501 and 1500: 836
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 501 and 1500: 837
# Your guess is too low.

# You have no more guesses. You lost!