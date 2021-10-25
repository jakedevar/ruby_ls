  # def offense_defense 
  #   the_move = []
  #   WINNING_LINES.each do |line|
  #     p squares = @squares.values_at(*line)
  #     if about_to_win?(squares, the_move)
  #       the_move.select{|x| x == INITIAL_MARKER }.first
  #     end
  #   end
  # end

  # def about_to_win?(squares, arr)
  #   mark = squares.select(&:marked?).map(&:marker)
  #   return false if mark.size != 2
  #   arr << squares if mark.first == mark.last
  #   mark.first == mark.last
  # end

  =begin
==========================
         Problem
--------------------------
The computer currently picks a square at random. That's not very interesting. Let's make the computer defensive minded, so that 
if there's an immediate threat, then it will defend the 3rd square. 
We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row. If there's no immediate threat, then it will just pick a random square
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: take a line that is about to be won by the player 
        make sure that the computer can play defense and will defend that square that is about to be won 
        write the program yourself 

        square must be empty for you to make a move there 

-  Inputs: an array of numbers representing the squares in a winning line or values
-  Output: a marker being placed on one of those squares that is emplty 
--------------------------
**Clarifying Questions:**
--------------------------
1. can i do this method both for offense and defense? 
2. 
3.
--------------------------
**Implicit Requirements:**
--------------------------
make this work in a way that does not use the ls code 
--------------------------
Examples/Test Cases/Edge's
--------------------------
x| |x move to the middle slot 

--------------------------
     Data Structure
--------------------------
an array that represents the squares 
--------------------------
       Algorithm
--------------------------
make the defensive play
1. iterate through the winning lines and grab the values of each
2. check if there is a potential 2fer in there 
3. return the value that is containes an empty marker 
4.  
  **??Helper Methods??**

--------------------------
         Notes
--------------------------
i need to write a method that detects if there is a potential 2fer on the lines. this needs to return a boolean so it can let the if statment know to fire
i also have a winning lines array to itterate through that will check the winning lines also i can get the values at the winning lines 
=end

def defense
  WINNING_LINES.each do |line|
    if check_if_two(line)
      line.each {|sqr| return sqr if @squares[sqr] == Square::INITIAL_MARKER}
    end
  end
end

def check_if_two(line)
  @squares.values_at(*line).count(TTTGame::HUMAN_MARKER) == 2 &&
  @squares.values_at(*line).count(Square::INITIAL_MARKER) == 1
end