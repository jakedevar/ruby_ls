# exercise_5.rb

# def diamond(num)
#   rows = ' ' * num
#   (num + 1).times do |x|
#   puts ('*' * x).center(num) if x.odd?
#   end
#   (num - 1).times do |x|
#     puts ('*' * ((num - 1)- x)).center(num) if x.odd?
#   end
#   return
# end

# LS solution this is one of the only ones I am not typing out in full
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

p diamond(1)
