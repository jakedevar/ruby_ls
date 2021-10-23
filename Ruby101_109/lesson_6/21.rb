# frozen_string_literal: true

CARDS = { 'Ace' => 11, 'Two' => 2, 'Three' => 3, 'Four' => 4, 'Five' => 5, 'Six' => 6, 'Seven' => 7, 'Eight' => 8, 'Nine' => 9,
          'Ten' => 10, 'Jack' => 10, 'Queen' => 10, 'King' => 10 }.freeze # this now seems a little redundant after viewing ls solution
RAND = %w(Ace Two Three Four Five Six Seven Eight Nine Ten Jack Queen
          King).freeze
PLAYER = [].freeze # probs improper grammer because your not supposed to alter constants
COMPUTER = [].freeze

def prompt(string)
  puts ">> #{string}"
end

def deal_conversion(arr)
  arr.map { |ele| CARDS[ele] } # part of redundancy trim this code next time
end

# redundant method could be combined also idk about arg name
def player_cards(_deck)
  PLAYER << RAND.sample # same^
end

def computer_cards(_deck)
  COMPUTER << RAND.sample # same^
end

# i actually like this method because it short and sweet
def total(cards)
  puts cards.sum
end

# redundant method and poorly named
def display_cards(player, computer)
  prompt("Computer has: #{computer[0]}, Unknown")
  if PLAYER.include?('Ace')
    prompt("Player has: #{player.join(', ')}")
  else
    prompt("Player has: #{player.join(', ')}.")
  end
end

# could be combined
def computer_display_cards(player, computer)
  prompt("Computer has: #{computer.join(', ')}")
  prompt("Player has: #{player.join(', ')}.")
end

loop do
  prompt('Lets begin!')
  person = nil
  dealer = nil
  loop do # could be a 2 times thing
    break if COMPUTER.size >= 2 # actually dont have a problem with this except could lose = sign

    player_cards(CARDS)
    computer_cards(CARDS)
  end

  display_cards(PLAYER, COMPUTER)

  loop do
    prompt('Player: Hit or Stay? (H/S)')
    player_input = gets.chomp.downcase
    break if player_input == 's'

    if player_input == 'h'
      player_cards(CARDS)
      display_cards(PLAYER, COMPUTER)
      if deal_conversion(PLAYER).sum > 21 && !PLAYER.include?('Ace')
        prompt('You busted!!!! Computer wins...')
        person = :bust
        break
      elsif deal_conversion(PLAYER).sum > 21 && PLAYER.include?('Ace')
        if deal_conversion(PLAYER).sum - (10 * PLAYER.count('Ace')) > 21 # this could be a method this is a lot of logic to parse through
          display_cards(PLAYER, COMPUTER)
          prompt('You busted!!!! Computer wins...')
          person = :bust
          break
        end
      end
    else
      prompt('That is not a valid input please enter H or S')
    end
  end

  unless person == :bust # i actually like this
    loop do
      computer_display_cards(PLAYER, COMPUTER)
      if deal_conversion(COMPUTER).sum <= 17
        computer_cards(CARDS)
      elsif deal_conversion(COMPUTER).sum > 21 && COMPUTER.include?('Ace')
        if deal_conversion(COMPUTER).sum - (10 * COMPUTER.count('Ace')) > 21
          display_cards(PLAYER, COMPUTER)
          prompt('Computer busts...You win!!!!')
          person = :bust
          break
        end
      elsif deal_conversion(COMPUTER).sum > 21
        prompt('Computer busts...You win!!!!')
        dealer = :bust
        break
      else
        break
      end
    end
  end
  unless person == :bust || dealer == :bust
    if (21 - deal_conversion(COMPUTER).sum) < (21 - deal_conversion(PLAYER).sum)
      prompt('Computer wins...')
    elsif (21 - deal_conversion(PLAYER).sum) < (21 - deal_conversion(COMPUTER).sum)
      prompt('Player wins!!!!')
    else
      prompt('It\'s a draw!')
    end
  end
  # had i not used constants this would not be a problem
  PLAYER.delete_if do |ele|
    ele != 0
  end
  COMPUTER.delete_if { |ele| ele != 0 }
  prompt('Want to play again? (Y/N)')
  play_again = gets.chomp.downcase
  break if play_again != 'y'
end
# I think the questions I should be asking are how can i make something as simple as possible. I used to do this and then decided I was beating myself up for not
# having the simplest soltuion. I think a mix of the two should be good. One I think the code needs to be readable. also think where you can use occams razor on things
# instead of having these coffee induced logic rants about if and else and such
