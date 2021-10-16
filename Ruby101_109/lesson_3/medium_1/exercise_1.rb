#puts out phrase 10 times and indent every time
#adding to the last indent 
#store indent in the var adn then add to it while printing?
#no must be one line as per problem 

#10.times{ |x| puts ' The Flintstones Rock!'.rjust( ((x*4) *2), '  ')}
#I gave up on this one I just coulden tfigure it out in one line 
#this makes me sad that  Icouldent do the first problem but i was looking in the wrong place
# I was trying to figure out how to solve things by using past expereince on what I thought 
#the methods to solving a problem on this one with the LS solution
#below i didnt think that you could multiply a string by an int
10.times { |number| puts ('  ' * number) + "The flintstones rock!"}