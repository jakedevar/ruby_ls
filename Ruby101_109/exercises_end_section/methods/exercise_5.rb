#exercise_5.ruby
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(people)
  return people.sample
end

def activity(verb)
  return verb.sample
end

def sentence(x, y)
  "#{x} went #{y}"
end

puts sentence(name(names), activity(activities))