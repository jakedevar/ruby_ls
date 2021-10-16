VALID_CHOICES = %w[r p sc l sp]

WINS = []
COMPUTER_WINS = []

def win?(first, second)
  ((first == 'r' && second == 'sc') ||
  (first == 'r' && second == 'l')) ||
    ((first == 'p' && second == 'r') ||
    (first == 'p' && second == 'sp')) ||
    ((first == 'sc' && second == 'p') ||
    (first == 'sc' && second == 'l')) ||
    ((first == 'sp' && second == 'sc') ||
    (first == 'sp' && second == 'r')) ||
    ((first == 'l' && second == 'p' ||
      first == 'l' && second == 'sp'))
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!!!!'
  elsif win?(computer, player)
    'Computer won!!!!'
  else
    'Its a tie!!!'
  end
end

def prompt(message)
  puts("=> #{message}")
end

def win_counter(player, computer)
  win_point = display_results(player, computer)
  win_keep = win_point
  if win_keep == 'You won!!!!'
    WINS << 1
    prompt(win_keep)
  elsif win_keep == 'Computer won!!!!'
    COMPUTER_WINS << 1
    prompt(win_keep)
  else
    prompt('It is a tie!!!!')
  end
end

prompt('First to win three wins!!!!')
loop do
  choice = ''

  loop do
    prompt("Choose one :
      'r' (rock),
      'sc' (scissors)
      'sp' (spock)
      'p' (paper)
      'l' (lizard)")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  win_counter(choice, computer_choice)
  prompt("You: #{WINS.length} Computer: #{COMPUTER_WINS.length}")
  break if WINS.length == 3 || COMPUTER_WINS.length == 3
end
prompt('Thank you for playing Goodbye')
