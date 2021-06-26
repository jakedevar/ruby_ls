#exercise_2.rb
rand_int = 100021
def is_odd?(int)
  (int % 2 == -1 || 1) ? true : false
end
p is_odd?(rand_int)