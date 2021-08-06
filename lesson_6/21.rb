CARDS = { 'Ace'=>11, 'Two'=>2, 'Three'=>3, 'Four'=>4, 'Five'=>5, 'Six'=>6, 'Seven'=>7, 'Eight'=>8, 'Nine'=>9, 'Ten'=>10, 'Jack'=>10, 'Queen'=>10, 'King'=>10 }
RAND = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
PLAYER = []
COMPUTER = []

def prompt(string)
  puts ">> #{string}"
end

def deal_conversion(arr)
  arr.map {|ele| CARDS[ele]}
end

def player_cards(deck)
  PLAYER << RAND.sample
end

def computer_cards(deck)
  COMPUTER << RAND.sample
end

def display_cards(player, computer)
  prompt("Computer has: #{computer[0]}, Unknown")
  prompt("Player has: #{player.join(', ')}. Total: #{deal_conversion(PLAYER).sum}")
end

def computer_display_cards(player, computer)
  prompt("Computer has: #{computer.join(', ')} Total: #{deal_conversion(computer).sum}")
  prompt("Player has: #{player.join(', ')}. Total: #{deal_conversion(player).sum}")
end

loop do 
  prompt('Lets begin!')

  loop do
    break if COMPUTER.size >= 2
    player_cards(CARDS)
    computer_cards(CARDS)
  end

  display_cards(PLAYER, COMPUTER)

  player = loop do
    prompt("Player: Hit or Stay? (H/S)")
    player_input = gets.chomp.downcase
    break if player_input == 's'
    if player_input == 'h'
      player_cards(CARDS)
      if deal_conversion(PLAYER).sum > 21 
        display_cards(PLAYER, COMPUTER)
        prompt('You busted!!!! Computer wins...')
        :bust
        break
      else
        display_cards(PLAYER, COMPUTER)
      end
    else 
      prompt('That is not a valid input please enter H or S')
    end
  end
  unless player == :bust
    loop do 
      computer_display_cards(PLAYER, COMPUTER)
      if deal_conversion(COMPUTER).sum <= 17
        computer_cards(CARDS)
      elsif deal_conversion(COMPUTER).sum > 21
        prompt('Computer busts...You win!!!!')
        :bust
        break
      else
        break
      end
    end
  end
  unless player == :bust || computer == :bust
    if (21 - deal_conversion(PLAYER).sum) < (21 - deal_conversion(COMPUTER).sum)
      prompt('Player wins!!!!')
    else
      prompt('Computer wins...')
    end
  end
  PLAYER.delete_if { |ele| ele != 0}
  COMPUTER.delete_if { |ele| ele != 0}
  prompt('Want to play again? (Y/N)')
  play_again = gets.chomp.downcase
  break if play_again == 'n'
end
