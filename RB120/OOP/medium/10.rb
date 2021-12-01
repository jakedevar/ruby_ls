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

# Include Card and Deck classes from the last two exercises.

class PokerHand
  attr_reader :hand

  def initialize(deck)
    @hand = []
    hand_init(deck)
  end

  def hand_init(deck)
    begin
      5.times {|_| @hand << deck.pop}
    rescue NoMethodError
      5.times {|_| @hand << deck.cards.pop}
    end
  end

  def print
    @hand.each do |card|
      puts card.to_s
    end
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
    @hand.map {|card| card.suit}.all?(@hand[0].suit) && @hand.map {|card| card.values}.all? {|x| x > 9}
  end

  def straight_flush?
    ranks = @hand.map {|card| card.values}.sort
    @hand.map {|card| card.suit}.all?(@hand[0].suit) && ranks.each_with_index do |e, i|; return true if i == ranks.size - 1 ;return false if (e + 1) != ranks[i + 1] end
  end

  def four_of_a_kind?
    @hand.map(&:values).tally.values.include?(4)
  end

  def full_house?
    @hand.map(&:values).tally.values.include?(3) && @hand.map(&:values).tally.values.include?(2)
  end

  def flush?
    @hand.map {|card| card.suit}.all?(@hand[0].suit)
  end

  def straight?
    ranks = @hand.map {|card| card.values}.sort
    ranks.each_with_index do |e, i|; return true if i == ranks.size - 1 ;return false if (e + 1) != ranks[i + 1] end
  end

  def three_of_a_kind?
    @hand.map(&:values).tally.values.include?(3)
  end

  def two_pair?
   @hand.map(&:values).tally.values.count(2) == 2
  end

  def pair?
    @hand.map(&:values).tally.values.include?(2)
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

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