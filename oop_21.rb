=begin
    Write a description of the problem and extract major nouns and verbs.
    Make an initial guess at organizing the verbs into nouns and do a spike to explore the problem with temporary code.
    Optional - when you have a better idea of the problem, model your thoughts into CRC cards.

21 is a card game where there are one or more players and a dealer. the dealer deals two cards to themselves and the player(s) from the deck. 
the player can only see one of the dealers cards untill the end of the round 
the goal of the game is to get either too or as close as possible to a total of 21 
if you go over 21 you bust 
if your total is under 21 and wish to get closer you may take your chances by hitting
when you are satisfied you can choose to stay where you are 


nouns: deck, player, dealer, hand, deck, game, total, participant
verbs: bust, hit, stay, deal
=end

class Deck
  SUITS = %w(clubs hearts diamonds spades)
  VALUES = %w(2 3 4 5 6 7 8 9 jack queen king ace)

  attr_accessor :cards
  
  def initialize
    @cards = SUITS.product(VALUES).shuffle
  end
  
  def deal 

  end  
end

class Player
  def initialize

  end

  def hand

  end

  def hit

  end

  def stay

  end

  def total

  end

  def busted?

  end
end


class Game
  deck = Deck.new
  def play 
    p deck.cards
  end

  # loop do 
   

  #   # deal_cards 
  #   # show_initial_cards
  #   # player_turn
  #   # dealer_turn
  #   # show_result
  # end
end

Game.new.play