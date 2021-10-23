# exercise_10.rb

# def penultimate(string)
#   string.split[-2]
# end

def penultimate(string)
  split = string.split
  index = split.length / 2
  if split.length < 3 && split.length.even?
    puts "no middle word here, here is the last one though"
    string.split[-1]
  else
    split[index]
  end
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'
