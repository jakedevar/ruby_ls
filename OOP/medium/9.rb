=begin
==========================
         Problem
--------------------------
create a deck class that has the abilty to create a deck full of cards
from the card class that was previously created 
also when the deck runs out of cards it must be able to be regenerated 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
  - each card needs to be a card object 
  - must be a full deck and must be shuffled 
  - need to have a draw method that pops one off
  - must reset when deck is empty 
-  Inputs: two arrays 
-  Output: 52 cards and a draw method that pops one off 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
an array of objects 
--------------------------
       Algorithm
--------------------------
1. product suits and ranks together and then in the combination init a card object with combo
2. shuffle the resulting array and you have your deck
3. create a draw method that is essentially just a pop off
4. create a reset clause in draw?

--------------------------
          Notes
--------------------------

=end

# class Deck
#   attr_accessor :cards
#   RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
#   SUITS = %w(Hearts Clubs Diamonds Spades).freeze

#   def initialize
#     @cards = deck_init
#   end

#   def deck_init
#     temp = RANKS.product(SUITS).shuffle
#     temp.map {|sub_arr| Card.new(sub_arr[0], sub_arr[1])}
#   end

#   def draw
#     @cards = deck_init if @cards.size == 0
#     @cards.pop
#   end
# end

# class Card
#   include Comparable
#   attr_reader :rank, :suit

#   VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end

#   def to_s
#     "#{rank} of #{suit}"
#   end

#   def values
#     VALUES.fetch(rank, rank)
#   end

#   # def <=>(other)
#   #   values <=> other.values    
#   # end
 
# end

class Deck
  attr_accessor :cards
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def reset
    @cards = RANKS.product(SUITS).map {|sub| Card.new(sub[0], sub[1])}.shuffle
  end

  def draw
    reset if cards.size == 0
    @cards.pop
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def values
    VALUES.fetch(rank, rank)
  end

  # def <=>(other)
  #   values <=> other.values    
  # end
 
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn2
p drawn != drawn2 # Almost always.