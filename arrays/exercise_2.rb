#exercise_2.rb

arr = ["b", "a"]
#arr = arr.product(Array(1..3))
#arr.first.delete(arr.first.last)

arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

print arr