# frozen_string_literal: true

require 'pry'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
suits = %w[H C S D]

def prompt(string)
  puts "=> #{string}"
end

def deck(cards, suits)
  suits.product(cards).shuffle
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
    add -= 10 if add > 21
  end
  add
end

def bust?(hand_total)
  hand_total > 21
end

def play_again?
  prompt('Want to play again? (Y/N)')
  play_again = gets.chomp
  return true if play_again == 'y'.downcase
end

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

def display_win(player_total, computer_total)
  value = detect_win?(player_total, computer_total)
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

def final_spread(player_total, dealer_total, dealer, player)
  puts '**************************************************'
  prompt 'Final Spread'
  prompt("Dealer has: #{dealer} Total: #{dealer_total}")
  prompt("Player has: #{player} Total: #{player_total}")
  puts '**************************************************'
end

def score_board(hand, board)
  case hand
  when :player_win
    board[0] << 1
  when :computer_win
    board[1] << 1
  when :computer_bust
    board[0] << 1
  when :player_bust
    board[1] << 1
  end
end

loop do # main loop
  prompt 'Welcome to 2wenty 1ne!!'
  prompt 'Lets begin...'
  puts '========================='
  player = []
  dealer = []
  board = [[], []]
  player_total = total(player)
  dealer_total = total(dealer)

  2.times do # init hands
    player << deck(cards, suits).pop
    dealer << deck(cards, suits).pop
  end

  loop do # player hit
    player_total = total(player)
    prompt("Computer has: #{dealer[0]}, Unknown")
    prompt("Player has: #{player} Total: #{player_total}")
    puts '========================='
    prompt('Player: Hit or Stay? (H/S)')
    player_input = gets.chomp
    case player_input
    when 'h'
      prompt 'You chose to hit!'
      puts '========================='
      player << deck(cards, suits).pop
    when 's'.downcase
      prompt 'You Chose to stay...'
      puts '========================='
    else
      prompt('That is not a valid input please enter H or S')
    end
    player_total = total(player)
    break if player_total > 21 || player_input == 's'
  end

  loop do # dealer hit
    player_total = total(player)
    dealer_total = total(dealer)
    break if dealer_total >= 17 || bust?(player_total)

    prompt 'Dealer Hits!'
    puts '========================='
    prompt("Dealer has: #{dealer} Total: #{dealer_total}")
    dealer << deck(cards, suits).pop
  end

  final_spread(player_total, dealer_total, dealer, player)
  display_win(player_total, dealer_total)
  puts '========================='
  score_board(detect_win?(player_total, dealer_total), board)
  prompt "Player Wins: #{board[0].sum} Dealer Wins: #{board[1].sum}"
  break unless play_again?

  system 'clear'
end

prompt 'Thanks for playing 2wenty 1ne!!!!!'
# I think the questions I should be asking are how can i make something as simple as possible. I used to do this and then decided I was beating myself up for not
# having the simplest soltuion. I think a mix of the two should be good. One I think the code needs to be readable. also think where you can use occams razor on things
# instead of having these coffee induced logic rants about if and else and such
