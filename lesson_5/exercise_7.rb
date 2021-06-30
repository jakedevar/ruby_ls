#exercise_7.rb

a = 2
b = [5, 8]
arr = [a, b]

p arr[0] += 2 #which will now equal 4 because indexed assignment is mutating
p arr[1][0] -= a # which is now 1 because in this instance a is a referane inside of an array so it would be affecting it directly

# it looks like i was inccorrect on the second it looks like a is just a referenece it looks like no matter what ints are not mutatable and arrays are 

The value of a didn't change because we are not referencing a at any point. This code arr[0] += 2 was modifying the array, arr not a. In effect 
we are assigning a new 
object at that index of the array so that instead of arr[0] containing a it now contains 4 - we can check this by looking at the value of arr: