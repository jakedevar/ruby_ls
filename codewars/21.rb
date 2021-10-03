=begin
# ------------------- Problem ---------------------


# ------------------- Examples --------------------


# ------------------- Data ------------------------


# ------------------- Algorithm -------------------
each with index and each with index 
return [i, i2] if ele2 == 1

# ------------------- Storm -----------------------

=end

def mineLocation(arr)
  arr.each_with_index do |sub_arr, ind1|
    sub_arr.each_with_index do |ele, ind2|
      return [ind1, ind2] if ele == 1
    end
  end
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]

p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]

p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]

p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]

p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]

p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]