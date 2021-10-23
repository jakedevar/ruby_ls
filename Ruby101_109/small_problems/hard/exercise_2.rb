def star(num)
  counter = 0
  counter2 = 0
  until counter == (num / 2)
    puts((' ' * counter) + '*' + (' ' * (((num / 2) - 1) - counter)) + '*' + (' ' * (((num / 2) - 1) - counter)) + '*')
    counter += 1
  end
  puts '*' * num
  until counter2 == (num / 2)
    puts((' ' * (((num / 2) - 1) - counter2)) + '*' + (' ' * (counter2)) + '*' + (' ' * (counter2)) + '*')
    counter2 += 1
  end
end

star(21)

# NICE!!! got it right !!! works with all other odd numbers as well LS solution below

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
