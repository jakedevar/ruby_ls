# frozen_string_literal: true

VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze
SUIT = %w[C S H D].freeze

def prompt(phrase)
  puts "=> #{phrase}"
end

def initilize_deck(s, v)
  s.product(v).shuffle
end

def total(player_cards)
  total = 0
  values = player_cards.map { |sub| sub[1] }
  values.each do |item|
    total += if item == 'A'
               11
             elsif item.to_i.zero?
               10
             else
               item.to_i
             end
  end
  if total > 21
    values.count { |x| x == 'A' }.times do
      total -= 10
    end
  end

  total
end

def busted?(cards)
  total = total(cards)
  total > 21 ? :busted : false
end

def detect_results(human, comp)
  human_total = total(human)
  comp_total = total(comp)

  if human_total > 21
    :player_bust
  elsif comp_total > 21
    :comp_bust
  elsif comp_total < human_total
    :player_win
  elsif comp_total > human_total
    :comp_win
  else
    :tie
  end
end

def display_results(player_hand, comp_hand)
  result = detect_results(player_hand, comp_hand)

  case result
  when :player_bust
    prompt('Player busts!!')
  when :comp_bust
    prompt('Computer busts!!')
  when :player_win
    prompt('Player Wins!!')
  when :comp_win
    prompt('Computer Wins!!')
  when :tie
    prompt('It is a tie...')
  end
end

def play_again?
  puts '--------------------'
  prompt('Would you like to play again? (Y/N)')
  input = gets.chomp
  input.downcase.start_with?('y')
end

loop do # main game loop
  prompt('Welcome to 21')

  # initialize vars
  deck = initilize_deck(SUIT, VALUES)
  human_cards = []
  computer_cards = []

  # initialize hand
  2.times do
    human_cards << deck.pop
    computer_cards << deck.pop
  end

  prompt "Dealer has #{computer_cards[0]} and ?"
  prompt "You have: #{human_cards[0]} and #{human_cards[1]}, for a total of #{total(human_cards)}"

  loop do # player turn
    player_input = nil
    loop do
      prompt('Would you like to Hit or Stay? (H/S)')
      player_input = gets.chomp.downcase
      break if %w[h s].include?(player_input)

      prompt('That is not a valid input please try again')
    end
    if player_input == 'h'
      human_cards << deck.pop
      prompt('You chose to hit') # I am seeing that stuff to make it look nicer even if it has nothing to do with the program is actually super important
      prompt "Your cards are #{human_cards}"
      prompt "Your total is now: #{total(human_cards)}"
    end
    break if busted?(human_cards) || player_input == 's'
  end

  if busted?(human_cards)
    prompt "Player total is now: #{total(human_cards)}"
    display_results(human_cards, computer_cards)
    play_again? ? next : break # i did not know that next could be used like this
  else
    prompt "You stayed at #{total(human_cards)}"
  end

  prompt 'Dealer turn...'

  loop do
    break if total(computer_cards) >= 17

    prompt('Dealer hits')
    computer_cards << deck.pop
    prompt "Dealer's cards are now: #{computer_cards} #{total(computer_cards)}"
  end

  if busted?(computer_cards)
    prompt "Dealer total is now: #{total(computer_cards)}"
    display_results(human_cards, computer_cards)
    play_again? ? next : break # i did not know that next could be used like this
  else
    prompt "Computer stayed at #{total(computer_cards)}"
  end

  puts '=============='
  prompt "Dealer has #{computer_cards}, for a total of: #{total(computer_cards)}"
  prompt "Player has #{human_cards}, for a total of: #{total(human_cards)}"
  puts '=============='

  display_results(human_cards, computer_cards)

  break unless play_again?
end

prompt('Thanks for playing!')
