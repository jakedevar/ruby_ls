#exercise_9.rb

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# It will return no because the first funciton does not 
# even tell the param to do anything so its just sitting there
# since the last line evaluated it yes then it returns yes
# even though bar has a default value in param, param has 
# a value to evaluate so it overides no and the ternary
# operator makes it no
# I was Correct!!!!
