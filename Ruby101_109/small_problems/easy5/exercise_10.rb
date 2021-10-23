# exericse_10.rb
=begin
def print_in_box(string)
  top_and_bottom = []
  top_and_bottom_poles = []
  word_pole = []
  (string.length + 2).times { |x| top_and_bottom << '-'}
  (string.length + 2).times { |x| top_and_bottom_poles << ' '; word_pole << ' '}
  top_and_bottom_poles.push('|').unshift('|')
  top_and_bottom.push('+').unshift('+')
  word_pole[1] = "#{string + ' ' + '|'}"
  word_pole.unshift('|')
  print top_and_bottom.join puts ' '
  print top_and_bottom_poles.join puts ' '
  print word_pole.join puts ' '
  print top_and_bottom_poles.join puts ' '
  print top_and_bottom.join puts ' '
end
=end

def print_in_box(string)
  top_box = "+#{'-' * (string.size + 2)}+"
  empty_line = "|#{' ' * (string.size + 2)}|"

  puts top_box
  puts empty_line
  puts "|#{' ' + string + ' '}|"
  puts empty_line
  puts top_box
end

print_in_box('lool')

# i knew LS would have an elegant solution and i was right but thats ok. it doesnot have to be perfect the first time!! really glad I learned this way now
