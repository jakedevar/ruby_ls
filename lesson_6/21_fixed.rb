# frozen_string_literal: true

cards = ['J', 'Q', 'K', 'A']
suits = %w[H C S D]


def prompt(string)
  puts "=> #{string}" # I like the arrow rocket better over the >>
end

def deck(cards, suits)
  suits.product(cards).shuffle
end

def deal_conversion(arr)
  arr.map do |sub|
    if sub[1] == 'A'
      11
    elsif sub[1].to_i == 0
      10
    else
      sub[1]
    end
  end
end

def total(cards)
  add = 0
  if add > 21 && cards.include?('A')
    cards.count {|ele| ele == 'A'}.times do
                                 (add -= 10)
    end
  else
    add += deal_conversion(cards).sum
  end  
end

def bust?(cards)
  total(cards) > 21 ? true : false
end

def display_cards(player, computer)
  prompt("Computer has: #{computer.join(', ')} Total: #{total(computer)}")
  prompt("Player has: #{player} Total: #{total(player)}")
end

def play_again?
  prompt('Want to play again? (Y/N)')
  play_again = gets.chomp
  return true if play_again == 'y'.downcase
end

def detect_win?(player_hand, computer_hand)
  if total(player_hand) > 21
    :player_bust
  elsif total(computer_hand) > 21
    :computer_bust
  elsif total(computer_hand) > total(player_hand)
    :computer_win
  elsif total(computer_hand) < total(player_hand)
    :player_win
  else
    :tie
  end    
end

def display_win(player_hand, computer_hand)
  value = detect_win?(player_hand, computer_hand)
  case value
    when :player_bust
      prompt 'Player busted!! Dealer Wins'
    when :computer_bust
      prompt 'Dealer busted!! You Win!!!!'
    when :computer_win 
      prompt 'Dealer won :('
    when :player_win
      prompt 'Player won!!!!!!!!'
    when :tie
      prompt 'The result is a tie...'
  end
end

loop do #main loop
  prompt('Lets begin!')
  player = []
  dealer = []

  2.times do #init hands
    player << deck(cards, suits).pop
    dealer << deck(cards, suits).pop
  end
  
  loop do #player hit
    prompt("Computer has: #{dealer[0]}, Unknown")
    prompt("Player has: #{player} Total: #{total(player)}")
    puts '========================='
    prompt('Player: Hit or Stay? (H/S)')
    player_input = gets.chomp
    if player_input == 'h'
      prompt 'You chose to hit!'
      puts '========================='
      player << deck(cards, suits).pop
    elsif player_input == 's'.downcase
      prompt 'You Chose to stay...'
    else
    prompt('That is not a valid input please enter H or S')
    end
    break if total(player) > 21 || player_input == 's'
  end

  loop do
    break if total(dealer) >= 17 ||  detect_win?(player, dealer) == :player_bust
    prompt 'Dealer Hits!'
    puts '========================='

    dealer << deck(cards, suits).pop
  end

  display_cards(player, dealer)
  display_win(player, dealer)

  puts '========================='

  break if !play_again? 
end
# I think the questions I should be asking are how can i make something as simple as possible. I used to do this and then decided I was beating myself up for not
# having the simplest soltuion. I think a mix of the two should be good. One I think the code needs to be readable. also think where you can use occams razor on things
# instead of having these coffee induced logic rants about if and else and such
