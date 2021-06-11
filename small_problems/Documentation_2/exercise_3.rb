#exercise_3.rb

#I think this will print out 4, 5, 3, 6


=begin
def greeting(language="Ruby", name)
  puts "Hello, #{name}. We heard you are a great #{language} programmer."
end

greeting("Sophie")
=end

#up above was somehting I found online to prove 
#what calling without minimum args would do 

def my_method(a, b =2, c=3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
#CORRECT!!!!!!
#this one felt good because in the past I havent been
#good with following the book or just guessing out of the dark
#I exeeded my past expectations in this one. 