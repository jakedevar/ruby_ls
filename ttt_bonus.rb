require 'pry'

module Center
  def prompt(message)
    puts message.to_s.center(80)
  end
end

class Board
  include Center

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def joinor(arr, sym = ', ', conj = 'or')
    return arr.join if arr.size == 1
    arr[-2] = "#{arr[-2]} #{conj} #{arr[-1]}"

    arr.pop
    arr.join(sym)
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/AbcSize
  def draw
    prompt "     |     |     "
    prompt "#{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    prompt "     |     |     "
    prompt "-----+-----+-----"
    prompt "     |     |     "
    prompt "#{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    prompt "     |     |     "
    prompt "-----+-----+-----"
    prompt "     |     |     "
    prompt "#{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    prompt "     |     |     "
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/AbcSize

  def offense_and_defense_move(marker)
    WINNING_LINES.each do |line|
      if two_in_a_line?(line, marker)
        line.each do |sqr|
          return sqr if @squares[sqr].marker == Square::INITIAL_MARKER
        end
      end
    end
    false
  end

  def two_in_a_line?(line, marker)
    line_values = @squares.values_at(*line).map(&:marker)

    line_values.count(marker) == 2 &&
      line_values.count(Square::INITIAL_MARKER) == 1
  end

  def move_to_middle_square_first
    return 5 if @squares[5].marker == Square::INITIAL_MARKER
    false
  end

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).map(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class ScoreBoard
  attr_accessor :human_score, :computer_score

  def initialize
    @human_score = 0
    @computer_score = 0
  end

  def reset_score_board
    initialize
  end
end

class Player
  attr_accessor :marker, :name

  def initialize(marker)
    @marker = marker
    @name = nil
  end
end

class TTTGame
  include Center

  X = "X"
  O = "O"
  WINS = 5

  attr_reader :board, :human, :computer, :scoreboard

  def initialize
    @board = Board.new
    @human = Player.new(X)
    @computer = Player.new(O)
    @scoreboard = ScoreBoard.new
    @current_marker = nil
  end

  def play
    clear
    display_welcome_message
    choose_name
    choose_marker
    main_game
    display_goodbye_message
  end

  private

  def main_game
    moves_first
    loop do
      display_board
      player_move
      display_result
      break if tournament_wins_reached || !play_again?
      reset
      display_play_again_message
      moves_first
    end
  end

  def choose_marker
    input = nil
    loop do
      prompt "would you like to be X's or O's? (x/o)"
      input = gets.chomp.downcase
      break if %w(x o).include?(input)
      prompt "Please enter a valid input"
    end
    marker_assignment(input)
  end

  # rubocop:disable Style/GuardClause
  def marker_assignment(answer)
    if answer == 'o'
      human.marker = O
      computer.marker = X
    end
  end
  # rubocop:enable Style/GuardClause

  def choose_name
    input = nil
    loop do
      prompt "What's you name?"
      input = gets.chomp
      break if input != ''
      prompt "Name cannot be empty! Please enter a valid input."
    end
    human.name = input
    computer.name = ['Hal', 'C3P0', 'R2D2', 'Ralph'].sample
  end

  def moves_first
    input = nil
    prompt "Choose who will move first (h/c)"
    loop do
      input = gets.chomp.downcase
      break if %w(h c).include?(input)
      prompt "Thats not a valid input, please choose either h or c"
    end
    return @current_marker = human.marker if input == 'h'
    @current_marker = computer.marker
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    prompt "Welcome to Tic Tac Toe!!"
    prompt ""
    prompt "The first player win #{TTTGame::WINS} games wins the tournament!!"
    prompt ""
  end

  def display_goodbye_message
    prompt "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_turn?
    @current_marker == human.marker
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Layout/LineLength
  def display_board
    prompt "#{human.name} is a #{human.marker}. #{computer.name} is a #{computer.marker}."
    prompt ""
    board.draw
    prompt ""
    prompt "#{human.name}'s' wins: #{scoreboard.human_score}. #{computer.name}'s wins: #{scoreboard.computer_score}"
    prompt ''
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Layout/LineLength

  def human_moves
    prompt "Choose a square (#{board.joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      prompt "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/CyclomaticComplexity
  def computer_moves
    move = nil
    if !move
      move = board.offense_and_defense_move(computer.marker)
      board[move] = computer.marker if move
    end

    if !move
      move = board.offense_and_defense_move(human.marker)
      board[move] = computer.marker if move
    end

    if !move && board.move_to_middle_square_first
      move = board.move_to_middle_square_first
      board[move] = computer.marker
    end
    board[board.unmarked_keys.sample] = computer.marker if !move
  end

  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/CyclomaticComplexity
  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = computer.marker
    else
      computer_moves
      @current_marker = human.marker
    end
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def display_result
    clear
    case board.winning_marker
    when human.marker
      prompt ">> #{human.name}!! <<"
      scoreboard.human_score += 1
    when computer.marker
      prompt ">> #{computer.name} won. <<"
      scoreboard.computer_score += 1
    else
      prompt ">> It's a tie!! <<"
    end
    display_board
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  def play_again?
    answer = nil
    loop do
      prompt "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      prompt "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def tournament_wins_reached
    if scoreboard.human_score == WINS ||
       scoreboard.computer_score == WINS

      clear_screen_and_display_board
      tournament_win_message
      true
    end
  end

  def tournament_win_message
    if scoreboard.human_score == WINS
      prompt "Congratulations #{human.name} has won the tournament!!"
    elsif scoreboard.computer_score == WINS
      prompt "#{computer.name} has won the tournament...Better luck next time!"
    end
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    clear
  end

  def display_play_again_message
    prompt "Let's play again!"
    prompt ""
  end
end

game = TTTGame.new
game.play
