# exercise_5.ruby
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(people)
  people.sample
end

def activity(verb)
  verb.sample
end

def sentence(x, y)
  "#{x} went #{y}"
end

puts sentence(name(names), activity(activities))
