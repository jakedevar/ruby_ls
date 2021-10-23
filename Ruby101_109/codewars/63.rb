=begin
# ------------------- Problem ---------------------
return a facebook like thing where the names of the people who liked something are formated correctly
input arr of strings
output a string with the data from arr
# ------------------- Examples --------------------
there will be anywhere from 0 to alot in an array

# ------------------- Data ------------------------
using an array for this one to a string

# ------------------- Algorithm -------------------
def method arr
  str = 'likes this'
  last name = arr.pop
  case arr
  when arr.size > 2

end

# ------------------- Code -----------------------

=end

def likes(arr)
  strs = ' likes this'
  str = ' like this'
  case arr
  when arr.size > 2
    last = arr.pop
    arr.join(', ') + ' and ' + last.join + str

  end
end

# p likes([]) == "no one likes this"

# p likes(["Peter"]) == "Peter likes this"

# p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"

p likes(["Max", "John", "Mark"]) #== "Max, John and Mark like this"

p likes(["Alex", "Jacob", "Mark", "Max"]) #= "Alex, Jacob and 2 others like this"
