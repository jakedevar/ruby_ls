=begin
problem: given an array and a number to skip. count at the beggening of the array and skip the amount of numbers and on that number delete it from the array and iterate over the new array
input: an array, an integer to represent the amount of items to skip 
output: in order the numbers that are killed off and placed into an array

examples: there is an empty array to account for, you do have to deal with letters (strings), also there does not seem to be duplicate items 
data: an array in and an array out with no duplicates and a number to skip

algo: 
1. start iterating over the array by index 
  - do this with a loop where you continue adding one and add a guard where you make the counter == zero if it exceeds the array length
  - create a pacer local var that is set to zero at the end of the loop, when the pacer == k then exit the loop but at the same time you are incrementing the counter 
2. if an index == the skip number then delete and add to array
3. continue iterating over the array after deletions to get an array with the order of deleted numbers 
=end

def josephus(items,k)
  result = []
  counter = -1
  pacer = 0
  until items.empty?
    while pacer < k 
      pacer += 1
      counter += 1
      counter = 0 if counter >= items.size  
    end
  pacer = 0 
  result << items.delete_at(counter)
    pacer += 1
  end
  result 
end

# https://www.codewars.com/kata/5550d638a99ddb113e0000a2/train/ruby