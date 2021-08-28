# frozen_string_literal: true

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

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

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
                  [[1, 5, 9], [3, 5, 7]] # diagonals
  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER

      return 'Computer'

    end
  end
  nil
end

def computer_defense(brd)
  square = empty_squares(brd).sample
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
                  [[1, 5, 9], [3, 5, 7]] # diagonals
  winning_lines.each do |line|
    if (brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER) && brd[line[2]] != COMPUTER_MARKER
      brd[line[2]] = COMPUTER_MARKER
    elsif (brd[line[0]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER) && brd[line[1]] != COMPUTER_MARKER
      brd[line[1]] = COMPUTER_MARKER
    elsif (brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER) && brd[line[0]] != COMPUTER_MARKER
      brd[line[0]] = COMPUTER_MARKER
    else
      brd[square] = COMPUTER_MARKER
    end
    break
  end
end

# def computer_places_peice(brd)
#   computer_defense(brd)
#   # square = empty_squares(brd).sample
#   # brd[square] = COMPUTER_MARKER

# end

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_peice!(board)
    break if someone_won?(board) || board_full?(board)

    computer_defense(board)
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

  if wins_player == 5 || wins_computer == 5
    break
  elsif wins_player < 5 || wins_computer < 5
    prompt("Want to play again? Y/N (Player: #{wins_player} Computer: #{wins_computer})")
    play_again = gets.chomp
    break if play_again != 'y'.downcase
  end

  display_board(board)
end

# def computer_defense(brd)
#   square = empty_squares(brd).sample
#   winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
#                   [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
#                   [[1, 5, 9], [3, 5, 7]]  # diagonals
#   winning_lines.each do |line|
#     if (brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER) && brd[line[2]] != COMPUTER_MARKER
#       brd[line[2]] = COMPUTER_MARKER
#       break
#     elsif (brd[line[0]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER) && brd[line[1]] != COMPUTER_MARKER
#        brd[line[1]] = COMPUTER_MARKER
#        break
#     elsif (brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER) && brd[line[0]] != COMPUTER_MARKER
#        brd[line[0]] = COMPUTER_MARKER
#        break
#     else
#      brd[square] = COMPUTER_MARKER
#      break
#     end
#   end
# end #this is my solution to the issue of computer defense. LS is below

# def find_at_risk_square(line, board)
#   if board.values_at(*line).count('X') == 2 || board.values_at(*line).count('O') == 2
#     board.select{|k,v| line.include?(k) && v == ' '}.keys.first
#   else
#     nil
#   end
# end #my piggybacked solution on top of LS's defensive feature
