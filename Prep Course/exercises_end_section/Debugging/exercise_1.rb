def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

#I predict that it will throw an error with the number or args
#it should have passed an array as an arguement 
#correct put i didnt predict the second 
#for the second the correct args was given but
#as soon as it goes to evaluate expression it raises an error 
#because ints dont have .each methods there is a no method error 