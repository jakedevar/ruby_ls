=begin 
i need to some how compare the rank again the other cards rank and THEN compare the suits to one another 
algo:
1. if first check is 0 then compare suits else compare regular 
2. if statment check and then body should be suit check 
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

  SUIT = {'Clubs'=>1, 'Diamonds'=>2, 'Hearts'=>3, 'Spades'=>4 }

  def <=> other
    if (convert(self) <=> convert(other)) == 0 
      SUIT[suit] <=> SUIT[other.suit]
    else 
      convert(self) <=> convert(other)
    end
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
# puts cards
puts cards.min #== Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank #== 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max#.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min#.rank == 8
puts cards.max.rank == 8