# frozen_string_literal: true

BOARD = { player: 0, dealer: 0 }.freeze
CARDS = { 'Ace' => 11, 'Two' => 2, 'Three' => 3, 'Four' => 4, 'Five' => 5, 'Six' => 6, 'Seven' => 7, 'Eight' => 8,
          'Nine' => 9, 'Ten' => 10, 'Jack' => 10, 'Queen' => 10, 'King' => 10 }.freeze
SUITS = %w[Hearts Clubs Spades Diamonds].freeze
BUST_NUM = 21
DEALER_STAY_AT = 17
NUM_OF_GAMES = 5

def prompt(string)
  puts "=> #{string}"
end

def deck
  SUITS.product(CARDS.keys).shuffle
end

def deal_conversion(arr)
  arr.map do |card_arr|
    CARDS[card_arr[1]]
  end
end

def total(cards)
  add = 0
  convert = deal_conversion(cards)
  add += convert.sum

  cards.flatten.select { |value| value == 'Ace' }.count.times do
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
def detect_win?(player_total, dealer_total)
  if bust?(player_total)
    :player_bust
  elsif bust?(dealer_total)
    :dealer_bust
  elsif dealer_total > player_total
    :dealer_win
  elsif dealer_total < player_total
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
  when :dealer_bust
    prompt 'Dealer busted!! You Win!!!!'
  when :dealer_win
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
  prompt("Dealer has: #{readable_hand(dealer)} | Total: #{total(dealer)}")
  prompt("Player has: #{readable_hand(player)} | Total: #{total(player)}")
  puts '**************************************************'
end

def score_board(win)
  case win
  when :player_win, :dealer_bust
    BOARD[:player] += 1
  when :dealer_win, :player_bust
    BOARD[:dealer] += 1
  end
  prompt "Player Wins: #{BOARD[:player]} Dealer Wins: #{BOARD[:dealer]}"
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

# player turn
def player_hit_loop(player, dealer)
  loop do
    player_total = total(player)
    prompt("Computer has: #{readable_hand(dealer)}, Unknown")
    prompt("Player has: #{readable_hand(player)} | Total: #{player_total}")
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
    prompt("Dealer has: #{readable_hand(dealer)} | Total: #{dealer_total}")
    dealer << deck.pop
  end
end

def first_to_five?
  if BOARD[:player] == NUM_OF_GAMES
    prompt 'The player has won all five games congratulations!!!!'
    true
  elsif BOARD[:dealer] == NUM_OF_GAMES
    prompt 'The dealer has won all five games... Better luck next time!!'
    true
  end
end

def readable_hand(hand)
  read = hand.map do |card_arr|
    "#{card_arr[1]} of #{card_arr[0]}"
  end
  read.join(', ')
end

loop do # Game Loop
  opening_greeting
  player = [] # Game Hands
  dealer = []

  deal_first_hand(player, dealer)

  player_hit_loop(player, dealer) # turn loops
  dealer_hit_loop(player, dealer)

  final_spread(dealer, player)
  display_win(player, dealer)

  player_total = total(player) # done for bonus requirement
  dealer_total = total(dealer)
  score_board(detect_win?(player_total, dealer_total))

  break if first_to_five? || !play_again?

  system 'clear'
end

prompt 'Thanks for playing 2wenty 1ne!!!!!'
