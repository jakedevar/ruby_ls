def get_me_a_return str 
  hello(yield(str))
end

def hello yes 
  puts yes
end

get_me_a_return('yes') {'hello'}