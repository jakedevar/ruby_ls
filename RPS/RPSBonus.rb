# problem: rock paper scissors, lizard, spock
# examples: no need i am aware but will look over code 
# data: use what we have an add lizard and spock
# algo: add moves to VALUES, add the appropriate check methods 
# add them into the logic for the true or false check

# problem: keep a running history of all the moves made by the players 
# display the history in a way that makes sense
# examples "1. player chose rock, computer chose paper"
# data: the moves are stored by self.move 
# algorithm: create another class to collab with. in said class create a instance variable which is an array 
# also create a counter class variable in order to increase the count number
# make an instance method that increases the class var counter by one and then adds it to a string which is to be placed in the array
# make an instance method that prints out all of those strings 

# add a class for each move and play the game like that 
# example: class rock, it even has its own variable and everything 
# data: you would have to structure it all with collaborator objects from said clases and save in variables 

def rock
  attr_writer :rock
  def initialize
    @rock = 'rock'
  end
end

def paper
  attr_writer :paper
  def initialize
    @paper = 'paper'
  end
end

def scissors
  attr_writer :scissors
  def initialize
    @scissors = 'scissors'
  end
end

def lizard
  attr_writer :lizard
  def initialize
    @lizard = 'lizard'
  end
end

def spock
  attr_writer :spock
  def initialize
    @spock = 'spock'
  end
end


class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(value)
    @value = value
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def scissors?
    @value == 'scissors'
  end

  def spock?
    @value == 'spock'
  end

  def lizard?
    @value == 'lizard'
  end

  def >(other_move)
    (rock? && (other_move.scissors? || other_move.lizard?)) ||
    (paper? && (other_move.rock? || other_move.spock?)) ||
    (scissors? && (other_move.paper? || other_move.lizard?)) ||
    (lizard? && (other_move.spock? || other_move.paper?)) ||
    (spock? && (other_move.scissors? || other_move.rock?)) 
  end

  def <(other_move)
    (rock? && (other_move.paper? || other_move.spock?)) ||
    (paper? && (other_move.scissors? || other_move.lizard?)) ||
    (scissors? && (other_move.rock? || other_move.spock?)) ||
    (lizard? && (other_move.rock? || other_move.scissors?)) ||
    (spock? && (other_move.paper? || other_move.lizard?))
  end

  def to_s
    @value
  end
end

# 1. add a scorboard class variable to player and upon winning update the score
  # -test with a low number of wins first 
# 2. update the play_again? to break if the score is reached 
# 3. add score class variables to player
# 4. add a method in player that checks if the score is == to constant of wins also in player
# 5. set a colaborator object in play to player that check if the method == 10


class Player
  attr_accessor :move, :name, :rock, :paper, :scissors, :lizard, :spock
  WINS = 2
  @@human_wins = 0
  @@computer_wins = 0
  def initialize
    set_name
    @rock = Rock.new
    @paper = Paper.new
    @scissors = Scissors.new
    @lizard = Lizard.new
    @spock = Spock.new
  end

  def self.human_win
    @@human_wins += 1
  end

  def self.computer_win
    @@computer_wins += 1
  end

  def self.score
    puts "Human wins: #{@@human_wins} "
    puts "Computer wins: #{@@computer_wins}"
  end

  def self.won?
    return true if @@human_wins >= WINS
    return true if @@computer_wins >= WINS
  end

end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    @name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

# problem: add personalities for each of the computer names in the repository 
# example: hal only plays rock, number 5 will mostly do rock but somtimes spock and so forth
# data: a list of names sampled at random from an array
# algo: initiate constants inside of the class with the different move probabilitys 
# use a case statment to use the names to pick from the different move probabilitys with the self.name

class Computer < Player
R2D2 = ['rock', 'paper', 'scissors']
HAL = ['spock', 'rock']
CHAPPIE = ['lizard', 'paper', 'scissors']
SONNY = ['rock', 'paper', 'scissors', 'lizard', 'spock']
NUMBER5 = ['rock']

  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    case self.name
    when 'R2D2' then self.move = Move.new(R2D2.sample)
    when 'Hal' then self.move = Move.new(HAL.sample)
    when 'Chappie' then self.move = Move.new(CHAPPIE.sample)
    when 'Sonny' then self.move = Move.new(SONNY.sample)
    when 'Number 5' then self.move = Move.new(NUMBER5.sample)
    end
  end
end

class RoundLog
  attr_accessor :history

  @@counter = 0

  def initialize
    @history = []
  end

  def add_move(move1, move2)
    @@counter += 1
    @history << "#{@@counter}. player chose: #{move1}, computer chose: #{move2}"
  end

  def print_log
    history.each do |history|
      puts "#{history}"
    end
  end
end

class RPSGame < Player
  attr_accessor :human, :computer, :bookie
  
  
  def initialize
    @human = Human.new
    @computer = Computer.new
    @bookie = RoundLog.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      Player.human_win
      Player.score
    elsif human.move < computer.move
      puts "#{computer.name} won..."
      Player.computer_win
      Player.score
    else
      puts "It's a tie!"
    end
    bookie.add_move(human.move, computer.move)
    bookie.print_log
  end

  def play_again?
    return false if Player.won?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end

    return true if answer == 'y'
    false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      break unless play_again?
      system 'clear'
    end
    display_goodbye_message
  end
end

RPSGame.new.play
