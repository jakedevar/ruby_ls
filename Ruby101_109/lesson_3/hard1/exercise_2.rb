# exercise_2.rb

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting #  => "hi there"
puts greetings # just hi is what i was about to say
# but then I rememebred the medium 1 exercise 7 and it
# said that ruby passes around object id's but when talking
# about methods. The informal greeting is pointing at an
# object id so when it mutates the caller it mutates
# the hash so there for greetings will say
# hi there

# ###HAAAAA I WAS RIGGGGHHHHTTT!!!!! VICTORY!!!
# STUDYING IS THE BEST!!! I was wrong in that it would return a
# string instead of a hash though but the main idea is there
