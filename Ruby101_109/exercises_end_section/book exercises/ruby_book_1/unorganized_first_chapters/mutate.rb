a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "before mutate mothode: #{a}"
mutate(a)
p "after mutate method: #{a}"
