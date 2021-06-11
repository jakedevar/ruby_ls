#exercise_5.rb

a = %w(a b x d e)

#from the docs I think It will print 7
#puts a.fetch(7)
#I was wrong it throws an error LOL I would have said that 
#but I saw that docs did somehting else with with a value like this

# I think this one will error too 
#puts a.fetch(7, 'beats me')
#Fuck it printed beats me 

#I think its going to print 49
puts a.fetch(7) { |index| index**2}
#Correct!!!

#reason I was wrong was this 
fetch(index) → obj
fetch(index, default) → obj
fetch(index) { |index| block } → obj

# Oh i understand now. the signitures up top of docs say what is up