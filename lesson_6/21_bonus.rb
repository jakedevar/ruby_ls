# frozen_string_literal: true

require 'pry'
BOARD = [[], []].freeze
CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze
SUITS = %w[H C S D].freeze
BUST_NUM = 21
DEALER_STAY_AT = 17

def prompt(string)
  puts "=> #{string}"
end

def deck
  SUITS.product(CARDS).shuffle
end

def deal_conversion(arr)
  arr.map do |sub|
    if sub[1] == 'A'
      11
    elsif sub[1].to_i.zero?
      10
    else
      sub[1]
    end
  end
end

def total(cards)
  add = 0
  convert = deal_conversion(cards)
  add += convert.sum

  cards.flatten.select { |value| value == 'A' }.count.times do
    add -= 10 if add > BUST_NUM
  end
  add
end

def bust?(hand_total)
  hand_total > BUST_NUM
end

def play_again?
  prompt('Want to play again? (Y/N)')
  play_again = gets.chomp
  return true if play_again == 'y'.downcase
end

# rubocop: disable Metrics/MethodLength
def detect_win?(player_total, computer_total)
  if bust?(player_total)
    :player_bust
  elsif bust?(computer_total)
    :computer_bust
  elsif computer_total > player_total
    :computer_win
  elsif computer_total < player_total
    :player_win
  else
    :tie
  end
end

def display_win(player, dealer)
  value = detect_win?(total(player), total(dealer))
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
  puts '========================='
end
# rubocop: enable Metrics/MethodLength

def final_spread(dealer, player)
  puts '**************************************************'
  prompt 'Final Spread'
  prompt("Dealer has: #{dealer} Total: #{total(dealer)}")
  prompt("Player has: #{player} Total: #{total(player)}")
  puts '**************************************************'
end

def score_board(hand)
  case hand
  when :player_win
    BOARD[0] << 1
  when :computer_win
    BOARD[1] << 1
  when :computer_bust
    BOARD[0] << 1
  when :player_bust
    BOARD[1] << 1
  end
  prompt "Player Wins: #{BOARD[0].sum} Dealer Wins: #{BOARD[1].sum}"
end

# rubocop: disable Metrics/MethodLength
def player_hit_or_stay(player_input, player)
  case player_input
  when 'h'
    prompt 'You chose to hit!'
    puts '========================='
    player << deck.pop
  when 's'.downcase
    prompt 'You Chose to stay...'
    puts '========================='
  else
    prompt('That is not a valid input please enter H or S')
  end
end
# rubocop: enable Metrics/MethodLength

def opening_greeting
  prompt 'Welcome to 2wenty 1ne!!'
  prompt 'Who ever wins five games first wins!!'
  prompt 'Lets begin...'
  puts '========================='
end

def deal_first_hand(player, dealer)
  2.times do # init hands
    player << deck.pop
    dealer << deck.pop
  end
end

def player_hit_loop(player, dealer) #player turn
  loop do
    player_total = total(player)
    prompt("Computer has: #{dealer[0]}, Unknown")
    prompt("Player has: #{player} Total: #{player_total}")
    puts '========================='
    prompt('Player: Hit or Stay? (H/S)')
    player_input = gets.chomp
    player_hit_or_stay(player_input, player)
    player_total = total(player)
    break if player_total > BUST_NUM || player_input == 's'
  end
end

def dealer_hit_loop(player, dealer)
  loop do # dealer hit
    player_total = total(player)
    dealer_total = total(dealer)
    break if dealer_total >= DEALER_STAY_AT || bust?(player_total)

    prompt 'Dealer Hits!'
    puts '========================='
    prompt("Dealer has: #{dealer} Total: #{dealer_total}")
    dealer << deck.pop
  end
end

def first_to_five?
  if BOARD[0][0] == 2
    prompt 'The player has won all five games congratulations!!!!'
  elsif BOARD[1][0] == 2
    prompt 'The dealer has won all five games... Better luck next time!!'
  else
    nil
  end
end

loop do # Game Loop
  opening_greeting 
  player = [] #Game Hands
  dealer = [] 

  deal_first_hand(player, dealer) 

  player_hit_loop(player, dealer) #turn loops
  dealer_hit_loop(player, dealer)

  final_spread(dealer, player)
  display_win(player, dealer)
  
  player_total = total(player) #done for bonus requirement
  dealer_total = total(dealer)
  score_board(detect_win?(player_total, dealer_total))
  
  break if !play_again? || first_to_five? == 2
  system 'clear'
end

prompt 'Thanks for playing 2wenty 1ne!!!!!'
