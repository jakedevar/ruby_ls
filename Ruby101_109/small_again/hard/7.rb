=begin
==========================
        Problem

Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules:
  - you may not mutate the given array's
  - you must build the result array one element at a time
  - you may not use sort on the array
  - you may not use any kind of sort on the result array
-  Inputs: two arrays
-  Output: a result array containing all elements of the two arrays given sorted
--------------------------
**Clarifying Questions:**
--------------------------
1. can i use uniq on the solution?
2. can i mutate the result array? essentially no
3. arrays
--------------------------
**Implicit Requirements:**
--------------------------
- you cannot use any kind of sort
- you can only build the array on element at a time
- arrays are already sorted
--------------------------
Examples/Test Cases/Edge's
--------------------------
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]
-  Visual Reference: above

--------------------------
     Data Structure
--------------------------
- two arrays
- the resulting one array
--------------------------
       Algorithm
--------------------------
1. init a result array empty
  a. also init a leftovers array to nil
2. init a counter
3. check if element of array one is < or > than element from array 2
4. use logic to determine if should be appended to result
  a. if value is less than the value from array 2 append to result
  b.
5. check if there is leftovers
6. run through again with counter backwards
7. return result array

**Helper Methods??**

Code
----
=end

# def merge(array1, array2)
#   result = []
#   leftovers = nil
#   counter1 = 0
#   counter2 = 0
#   array1.each do |value|
#     loop do
#       if (array1[counter1] == nil || array2[counter2] == nil) || array1[counter1] < array2[counter2]
#         until (array1[counter1] == nil || array2[counter2] == nil) || array1[counter1] > array2[counter2]
#           result << array1[counter1]
#           counter1 += 1
#         end
#       else
#         until (array1[counter1] == nil || array2[counter2] == nil) || array2[counter2] > array1[counter1]
#           result << array2[counter2]
#           counter2 += 1
#         end
#       end
#     end
#   end
#   result
# end
# loop logic, this is because when doing this problem you have to make sure you get all the elements that are less in one array before going to the next
# loop do:
# if array1 counter < array2 counter then append first element to result
# - add one to first counter repeat until this is no longer the case
# if array1 counter > array2 counter the nappend first element to result
#   _ add one to the second counter repeat until this is no longer the case
# this solution will eventually return nil on either one. protect against that

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end
  result
  # leftovers = array2[index2..-1]
  # index2 = 0
  # p leftovers
  # array1.reverse_each do |value|
  #   while index2 < array2.size && array2[index2] <= value
  #     result << array2[index2]
  #     index2 += 1
  #   end
  #   result << value
  # end
end
# what i am trying to do is get the left overs




# def merge(arr1, arr2)
#   return arr1 if arr2 == []
#   return arr2 if arr1 == []
#   i1 = 0
#   i2 = 0
#   result = []
#   until (arr1.size + arr2.size) - 2 == i1 + i2
#     if arr1[i1] < arr2[i2]
#       p result << arr1[i1]
#       i1 += 1 
#     elsif arr1[i1] > arr2[i2]
#       p result << arr2[i2]
#       i2 += 1
#     end
#   end
#   result 
# end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end



p merge([6, 2, 7], [3, 5])
# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]
