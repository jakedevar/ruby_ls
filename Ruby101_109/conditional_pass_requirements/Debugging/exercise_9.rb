def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break # this exits the code once the player has won
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      # guess_number(max_number, max_attempts) this seems to be the problem
    end
  end
end

guess_number(10, 3)

=begin
  First, I take a look at the problem discription to understand what the necessary requirements are for the code. Then I run the code to
  get a grasp of what it is doing that must be debugged. The problem requirements state that the program picks a number between 1 and a provided maximum number and you
  then get a limited number of attempts to guess it. Though upon running the code it seems that the code will continualy asking you to guess a number,
  even if you do eventually guess the number and it seems you have an unlimted number of guesses. I have also noticed that the winning number
  seems to change every time you input your guess. For instance, if you input 10 around fifty times or so in the same instacne of code execution you will get a
  few messages saying 'Yes! You win.'

  Next, I scan through the code to look for obvious errors in both the maximum number of attempts and the break conditional. After going through the problem
  and understanding what the code is doing it seems as though the issue is not with the break statment. Rather there is a recursive call to guess_number()
  at the bottom of the code. The note above the method call shows that it is intended to be used to try the program again though this simply places the user into a new
  instance of the loop within the method reseting the winning number as well as the amount of guesses.

  After commenting out this recurssive call to guess_number() the break statment with the number of guesses works as expected, as does the rest of the code.
  This leaves one thing out however, the code as it currently is, will continue to run even if the player guesses the correct number. In order to fix
  this I have added a break statment underneath the puts method call within the if statment that checks if you have won the game.
  The code now runs as required.
=end
