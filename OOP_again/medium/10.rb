=begin
==========================
         Problem
--------------------------
in the previous exercise you developed the two classes 
you are now going to use those classes to evaluate poker hands 

create a class PokerHand that draws 5 cards and 
evaluates those cards as poker hands 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - a poker hand must be drawn when a PokerHand object is created
	- each hand must be evaluated 
-  Inputs: an object that represents the poker hand of five cards objects taken from deck 
-  Output: and evaluation of the poker hand that returns a symbol 
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
a hand that is drawn from deck 
--------------------------
       Algorithm
--------------------------
1. create the initialize method for the class
	- should i make a method for it and call it right on the instance var? or should I do it 
	- with the instance var where I create a function right there, no method works better 
2. make the print method if there already isnt one 
	- create an attr_reader for the hand so that I can access it in print 
3. tackle the evaluate method 

--------------------------
          Notes
--------------------------

=end
require 'pry'

class Card
  attr_reader :rank, :suit
  include Comparable

  RANKS = {'Jack'=>11, 'Queen'=>12, 'King'=>13, 'Ace'=> 14}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def ranking
  	RANKS.fetch(rank, rank)
  end

  def <=> other
    ranking <=> other.ranking
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

class PokerHand
	attr_reader :hand

  def initialize(deck)
  	@hand = init_hand(deck)
  end

  def init_hand(deck)
  	arr = []
  	5.times do 
  		arr << deck.pop
  	end
  	arr
  end

  def print
  	hand.each {|card| puts card}
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
  	# must be all of same suit
  	# must have a rank value of royal flush 
  	# use count to make sure it == 60
  	hand.map {|n| n.ranking}.sum == 60 &&
  	hand.all? {|card| card.suit == hand[0].suit}
  end

  def straight_flush?
  	hand.max.ranking - hand.min.ranking == 4 &&
  	hand.all? {|card| card.suit == hand[0].suit}
  end

  def four_of_a_kind?
  	# if the count of hand max or min == 4 
  	hand.count(hand.max) == 4 ||
  	hand.count(hand.min) == 4
  end

  def full_house?
  	# count if three of max or min and 2 of max or min 
  	(hand.count(hand.max) == 3 && hand.count(hand.min) == 2)||
  	(hand.count(hand.min) == 3 && hand.count(hand.max) == 2)
  end

  def flush?
  	hand.all? {|card| card.suit == hand[0].suit}
  end

  def straight?
  	hand.max.ranking - hand.min.ranking == 4 &&
  	hand.sort[1].ranking - hand.min.ranking == 1
  end

  def three_of_a_kind?
  	hand.count(hand.max) == 3 ||
  	hand.count(hand.min) == 3 ||
  	hand.count(hand[2]) == 3
  end

  def two_pair?
  	count = 0
  	hand.each {|card| count += 1 if hand.count(card) == 2}
  	count == 4
  end

  def pair?
  	count = 0
  	hand.each {|card| count += 1 if hand.count(card) == 2}
  	count == 2
  end
end

# hand = PokerHand.new(Deck.new)
# hand.print
# puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
# class Array
#   alias_method :draw, :pop
# end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'