# frozen_string_literal: true

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
                [[1, 5, 9], [3, 5, 7]]
COMPUTER_CHOICE = %w[c h].freeze
MAX_WINS = 5
wins_player = 0
wins_computer = 0

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/MethodLength
def joinor(arr, symbol = ', ', conjunction = 'or')
  result = []
  arr.join.chars.each_with_index do |ele, index|
    result << if arr.join.size == 2
                (index == 1 ? ele : "#{ele} #{conjunction} ")
              elsif index != arr.size - 1
                ele + symbol
              else
                "#{conjunction} #{ele}"
              end
  end
  result.join
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are the #{PLAYER_MARKER} the computer is #{COMPUTER_MARKER}"
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+------'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+------'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

# starts the board
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# player piece method
def player_places_peice!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

# win?
def someone_won?(brd)
  !!detect_winner(brd)
end

# win?
def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# find squares computer
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

# offense helper
def comp_offense(brd, square)
  unless square
    WINNING_LINES.each do |line|
      return find_at_risk_square(line, brd, COMPUTER_MARKER)
    end
  end
end

# defense helper
def comp_defense(brd, square)
  unless square
    WINNING_LINES.each do |line|
      return find_at_risk_square(line, brd, PLAYER_MARKER)
    end
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense

  square ||= comp_offense(brd, square)
  # defense

  square ||= comp_defense(brd, square)

  # choose middle square first
  if !square && brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  elsif !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def alternate_player(data)
  data == 'h' ? 'c' : 'h'
end

# place piece both
def place_piece!(brd, current_player)
  if current_player == 'h'
    player_places_peice!(brd)
  else
    computer_places_piece!(brd)
  end
end

# input validation
def input_valid?(input)
  %w[h c].include?(input.downcase)
end

# GAME LOOP
loop do
  board = initialize_board
  prompt 'The first one to 5 wins is the tic-tac-toe champion!'
  current_player = nil

  # who goes first?
  loop do
    prompt('Who would you like to chose who goes first? (H for human C for computer)')
    who_choses_first = gets.chomp
    if who_choses_first == 'h'.downcase && input_valid?(who_choses_first)
      current_player = 'h'
    elsif who_choses_first == 'c'.downcase && input_valid?(who_choses_first)
      current_player = COMPUTER_CHOICE.sample
    else
      prompt('That is not a valid response')
    end
    break if %w[h c].include?(who_choses_first)
  end

  # play game loop
  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  case detect_winner(board)
  when 'Player'
    wins_player += 1
  when 'Computer'
    wins_computer += 1
  end

  display_board(board)

  prompt "#{detect_winner(board)} won!!"
  if wins_player == 5 || wins_computer == 5
    prompt "Player: #{wins_player} Computer: #{wins_computer}"
    break
  else
    prompt("Want to play again? Y/N (Player: #{wins_player} Computer: #{wins_computer})")
    play_again = gets.chomp
    break if play_again != 'y'.downcase
  end
end
prompt 'Thanks for playing tic-tac-toe!!!!'
