=begin
==========================
         Problem
--------------------------
use the class from the previous exercises and create a Deck class that contains 52 cards 

deck should have a draw method that pulls a cards

deck should be shuffled and if it runs out of cards then call method again 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - use stuff from previuos exercise
  - deck must contain 52 cards
  - deck must be shuffled 
  - deck should have a draw method that decreases deck amount 
-  Inputs: just methods really, when you create a deck its with an object shuffle deck 
-  Output: an object reping a card from a deck with draw
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
- when you create this deck class you need to init it with objects from cards
- 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
the deck array must be made of objects 

--------------------------
       Algorithm
--------------------------
1. initialize the deck in the constructor 
2. when you initialize deck make sure its initing to a deck create method 
3. create a draw method in deck
  - just pop from the deck 
4. ???? 

--------------------------
          Notes
--------------------------
i am going to just try checking something with product really quick to see how it works 
=end

class Card
  attr_reader :rank, :suit
  include Comparable

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def convert(card)
    case rank 
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

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  attr_accessor :deck

  def initialize
    @deck = []
  end

  def create_deck
    RANKS.product(SUITS).map! {|sub| Card.new(sub[0], sub[1])}.shuffle
  end

  def draw
    self.deck = create_deck if deck.empty?
    deck.pop
  end
end

deck = Deck.new
drawn = []
 52.times { drawn << deck.draw }
drawn.count { |card| card.rank == 5 } == 4
drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
 52.times { drawn2 << deck.draw }
 p drawn != drawn2 # Almost always.
 p drawn.first(3)
 p drawn2.first(3)
