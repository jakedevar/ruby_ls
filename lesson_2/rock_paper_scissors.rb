#rock_paper_scissors.rb

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts ("=> #{message}")
end
loop do
choice = ''
loop do
prompt("Choose one : #{VALID_CHOICES.join(', ')}")
choice = gets.chomp

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice.")
  end
end

computer_choice = VALID_CHOICES.sample

prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

if (choice =='rock' && computer_choice == 'scissors') || (choice == 'paper' && computer_choice == 'rock') || (choice == 'scissors' && computer_choice == 'paper')
  puts "You won!!!!"
elsif (choice =='scissors' && computer_choice == 'rock') || (choice == 'rock' && computer_choice == 'paper') || (choice == 'paper' && computer_choice == 'scissors')
  puts "Computer won!!!!"
else
  puts "Its a tie!!!"
end
prompt("Do you want to play again?? (Y for yes)")
answer = gets.chomp.downcase
break if answer != 'y'
end
prompt("Thank you for playing Goodbye")