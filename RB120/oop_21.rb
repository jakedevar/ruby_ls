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
require 'pry'

class Deck
  SUITS = %w(clubs hearts diamonds spades)
  VALUES = %w(2 3 4 5 6 7 8 9 jack queen king ace)

  attr_accessor :cards
  
  def initialize
    @cards = SUITS.product(VALUES).shuffle
  end
  
  def deal(dealer_hand, player_hand) 
    2.times do 
      dealer_hand << cards.pop
      player_hand << cards.pop
    end
  end  
end

class Player
  attr_accessor :hand, :sum
  attr_reader :name

  def initialize(name)
    @hand = []
    @name = name
    @sum = 0
  end

  def hit(deck)
    @hand << deck.pop
    total
  end

  def deal_conversion(card)
    if card.to_i != 0
      card.to_i
    elsif card == 'ace'
      @sum > 21 ? 1 : 11
    else 
      10
    end
  end

  def total
    total = 0
    @hand.each {|card| total += deal_conversion(card[1])}
    @sum = total
  end

  def busted?(other_player)
    if @sum > 21
      puts ''
      puts "#{name} busted!! Total: #{@sum}"
      puts ""
      puts "#{other_player} won!!"
      return true
    end
    false
  end

  def bust?
    return true if @sum > 21
    false
  end
  
  def show_hand
    total
    puts "#{self.name} has a total of: #{@sum}"
    @hand.each do |card|
      puts "#{card[1]} of #{card[0]}"
    end
  end  
end

class Dealer < Player
  
  def initialize(name)
    super
  end

  def show_hand_beginning
    puts "Dealer has: Unknown"
    puts "#{@hand[0][1]} of #{@hand[0][0]}"
    puts "Hidden"
  end

  def stay?
    return true if self.sum >= 17
    false
  end
end

class Game
  attr_reader :deck, :dealer, :player

  def initialize
    @deck = Deck.new
    @dealer = Dealer.new("Dealer")
    @player = Player.new("Player")
  end

  def play 
    
    loop do 
      deck.deal(dealer.hand, player.hand)
      show_initial_cards
      player_turn
      break if player.busted?(dealer.name)
      dealer_turn
      break if dealer.busted?(player.name) 
      show_end_cards
      break unless play_again?
    end
  end

  private 

  def play_again?
    puts "Do you want to play again? (y/n)"
    input = gets.chomp.downcase
    if input == 'y'
      Game.new.play
      return true 
    end
    false      
  end

  def show_initial_cards
    clear
    dealer.show_hand_beginning
    puts ""
    player.show_hand
  end

  def show_end_cards
    clear
    dealer.show_hand
    puts ""
    player.show_hand

    puts "Player has won!!" if player.sum > dealer.sum 
    puts "Dealer has won..." if dealer.sum > player.sum
    puts "It's a tie" if player.sum == dealer.sum 
  end

  def player_turn
    input = nil
    loop do 
      loop do 
        puts "Would you like to hit or stay? (h/s)"
        input = gets.chomp.downcase
        break if %w(h s).include?(input)
        puts "That is not a valid input"
      end
      binding.pry
      break if input == 's'
      player.hit(deck.cards) if input == 'h'
      clear
      show_initial_cards
      break if player.bust?
    end
  end

  def dealer_turn
    loop do 
      dealer.total
      break if dealer.bust? || dealer.stay?
      dealer.hit(deck.cards)
    end
  end

  def clear
    system 'clear'
  end
  
  # loop do 
   

  #   # deal_cards 
  #   # show_initial_cards
  #   # player_turn
  #   # dealer_turn
  #   # show_result
  # end
  # git hub test
end

Game.new.play