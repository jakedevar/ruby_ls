=begin
==========================
         Problem
--------------------------
Update this class so you can use it to determine the lowest ranking and highest ranking cards in an Array of Card objects:

For this exercise, numeric cards are low cards, ordered from 2 through 10. Jacks are higher than 10s, 
Queens are higher than Jacks, Kings are higher than Queens, and Aces are higher than Kings. The suit plays no part in the relative ranking of cards.

If you have two or more cards of the same rank in your list, your min and max methods should 
return one of the matching cards; it doesn't matter which one.

Besides any methods needed to determine the lowest and highest cards, create a #to_s method that returns a 
String representation of the card, e.g., "Jack of Diamonds", "4 of Clubs", etc.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - the suit plays no part in ranking system
  - create a to_s method that returns a string representatino of the card 
  - if you have two or more cards that are the same the method should return one of the two 
  - low is 2 high is ace 
-  Inputs: an array of card objects 
-  Output: either a min or a max of the cards or the rank itself 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
- this is all within one class
- you need to create your own min/max methods
- you need to convert jack, king etc to numbers 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
cards objects within an array, 
needing rank via a min and max method that takes rank into account 
--------------------------
       Algorithm
--------------------------
1. create a method that determines rank 
2. include comparable and overide <=> with said method above 
3. create a to_s method for cards 
4. profit 

--------------------------
          Notes
--------------------------

=end

class Card
  attr_reader :rank, :suit
  include Comparable

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def convert(card)
    case card.rank 
    when 'Ace'   then 14
    when 'King'  then 13
    when 'Queen' then 12
    when 'Jack'  then 11
    else rank 
    end
  end

  def <=> other
    convert(self) <=> convert(other)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8