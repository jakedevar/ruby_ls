#exercise_2.rb


run = {
  shoes: "laces",
  morning: "dawn",
  jake: "person"
}
workout = {
  weights: "yes",
  kettlebell: "absolutley",
  jumprope: "uhuh"
}

p run.merge(workout)

#p run
#p workout 

#merge means that the original hashes will remain uneffected by the 
#method

p run.merge!(workout)

p run
p workout

#where as merge! will permenatnly mutate the caller 