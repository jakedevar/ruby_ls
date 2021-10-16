=begin
# ------------------- Problem ---------------------
take two arguments which are arrays 
subtract the different contents of each array and return that as an array

but no litteraly subtract just like you would a math problem 

# ------------------- Examples --------------------
some arrays will be empty 
no letters or special characers 

# ------------------- Data ------------------------
an array obvi

# ------------------- Algorithm -------------------
we can use counts of the contents  with tally if we want to 
we can iterate through the longest array cecking counts of both arays and subtracting and then abs/ing the value as a times to add to resulting array

def array diff arr1 arr2
  res = []
  if arr1.size > arr2
    arr1.each do |n|
      i = arr1.count n - arr2 count n abs
      i.times do 
        res << n
      end
    end

  else opposite arrs same thing 
  end
  res 
end

take the second array and iterate through deleting what ever is in the first array that is the same and return 

def array diff arr1 arr2
  arr2 each do n 
    arr1 delete n 

    arr1 return 

# ------------------- Storm -----------------------

=end

# def array_diff arr1, arr2
#   res = []
#   if arr1.size > arr2.size 
#     arr1.each do |n|
#       i = (arr2.count(n)).abs
#       i.times do 
#         res << n
#       end
#     end
#   else
#     arr2.each do |n|
#       i = (arr1.count(n) - arr2.count(n))
#       i.times do 
#         res << n
#       end
#     end
#   end
#   res
# end
# i didnt understand the assignment hold the fuck up doing it again 

# def array_diff arr1, arr2
#   arr2.each {|n| arr1.delete(n)}
#   arr1
# end

#i got it right but dog are you fucking kiddaing me XD hahahahahahha love this look check it out 

def array_diff arr1, arr2
  arr1 - arr2
end

p array_diff([1,2], [1]) == [2]

p array_diff([1,2,2], [1]) == [2,2]

p array_diff([1,2,2], [2]) == [1]

p array_diff([1,2,2], []) == [1,2,2]

p array_diff([], [1,2]) == []