=begin
==========================
         Problem
--------------------------
Update your each_cons method so it takes an argument that specifies how many elements should be processed at a time.

Your method may use each, #each_index, #each_with_object, #inject, loop, for, while, or until to iterate through the Array passed in as an argument,

 but must not use any other methods that iterate through an Array or any other collection.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - argument specifies how many elements should be processed at a time
  - can use the normal methods to iterate. 
  - everything stops when second iterator reaches the end 
-  Inputs: an array and a consecutive number 
-  Output: whatever is passed into the block 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

should be able to hand just two steps regularly 
also needs  to handle an empty and more than one arg 
along with one 

--------------------------
     Data Structure
--------------------------
just a regular array but needs to iterate bassed on consecutive
--------------------------
       Algorithm
--------------------------
1. use double and make it return args
2. make it break when the counter + cons == size
3. 

--------------------------
          Notes
--------------------------

=end


# def each_cons arr, cons, &block
#   case cons 
#   when 1 then single(arr, &block)
#   when 2 then double(arr, &block)
#   else triple_plus(arr, cons, &block)
#   end
# end

# def single(arr, &block)
#   arr.each {|ele| block.call(ele)}
# end

# def double(arr, &block)
#   counter = 0 
#   until counter >= arr.size - 1
#     block.call(arr[counter], arr[(counter + 1)])
#     counter += 1
#   end
# end

# def triple_plus(arr, cons, &block)
#   counter = 0 
#   until counter + cons - 1 >= arr.size
#     block.call(arr[counter], arr[(counter + 1)...(counter + cons)])

#     counter += 1
#   end
# end

def each_cons(arr, n)
  arr.each_index do |ind|
    break if ind + n - 1 >= arr.size
    yield(*arr[ind..(ind + n - 1)])
  end
  nil
end


hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}