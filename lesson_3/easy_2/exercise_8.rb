#exercise_8.rb
advice = "Few things in life are as important as house training your pet dinosaur."
#advice.slice!("Few things in life are as important as ")
#p advice

#Bonus It does not mutate the caller so advice will remain the same
#look
#advice.slice("Few things in life are as important as ")
#LS solution
advice.slice!(0, advice.index('house'))

p advice