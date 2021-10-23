=begin
# ------------------- Problem ---------------------
make sure that each n or s etc is balanced against one another
make sure that the directions amount to less than 10

# ------------------- Examples --------------------

# ------------------- Data ------------------------
an array of strings that represent directions

# ------------------- Algorithm -------------------
return false if arr.length is > 10
group all items and check if all items are the same value

# ------------------- Storm -----------------------
=end

def is_valid_walk(arr)
  return false if arr.length > 10 || arr.length == 1
  storage = arr.group_by { |i| i }.values.map(&:length)
  storage.all?(storage[0]) ? true : false
end

p is_valid_walk(['n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 's']) == true

p is_valid_walk(['w', 'e', 'w', 'e', 'w', 'e', 'w', 'e', 'w', 'e', 'w',
                 'e']) == false

p is_valid_walk(['w']) == false

p is_valid_walk(['n', 'n', 'n', 's', 'n', 's', 'n', 's', 'n', 's']) == false
