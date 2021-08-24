VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
SUIT = ['C', 'S', 'H', 'D']

def initilize_deck(s, v)
  s.product(v).shuffle
end

def total(player_cards)
  total = 0
  values = player_cards.map {|sub| sub[1]}
  values.each do |item| 
    if item == 'A'
      total += 11
    elsif item.to_i == 0
      total += 10
    else
    total += item.to_i
    end
  end
  if total > 21 
    values.count {|x| x == 'A'}.times do 
      total -= 10
    end
  end

  total
end



loop do 
deck = initilize_deck(SUIT, VALUES)
human_cards = []
computer_cards = []
2.times do 
  human_cards << deck.pop
  computer_cards << deck.pop
end
puts total(human_cards), total(computer_cards)
break
end