# frozen_string_literal: true

CARDS = { 'Ace' => 11, 'Two' => 2, 'Three' => 3, 'Four' => 4, 'Five' => 5, 'Six' => 6, 'Seven' => 7, 'Eight' => 8, 'Nine' => 9,
          'Ten' => 10, 'Jack' => 10, 'Queen' => 10, 'King' => 10 }.freeze
RAND = %w[Ace Two Three Four Five Six Seven Eight Nine Ten Jack Queen King].freeze
PLAYER = [].freeze
COMPUTER = [].freeze

def prompt(string)
  puts ">> #{string}"
end

def deal_conversion(arr)
  arr.map { |ele| CARDS[ele] }
end

def player_cards(_deck)
  PLAYER << RAND.sample
end

def computer_cards(_deck)
  COMPUTER << RAND.sample
end

def display_cards(player, computer)
  prompt("Computer has: #{computer[0]}, Unknown")
  if PLAYER.include?('Ace')
    prompt("Player has: #{player.join(', ')}")
  else
    prompt("Player has: #{player.join(', ')}.")
  end
end

def computer_display_cards(player, computer)
  prompt("Computer has: #{computer.join(', ')}")
  prompt("Player has: #{player.join(', ')}.")
end

loop do
  prompt('Lets begin!')
  person = nil
  dealer = nil
  loop do
    break if COMPUTER.size >= 2

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
        if deal_conversion(PLAYER).sum - (10 * PLAYER.count('Ace')) > 21
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

  unless person == :bust
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
  PLAYER.delete_if { |ele| ele != 0 }
  COMPUTER.delete_if { |ele| ele != 0 }
  prompt('Want to play again? (Y/N)')
  play_again = gets.chomp.downcase
  break if play_again != 'y'
end
