# exercise_9.rb
h = { a: 1, b: 2, c: 3, d: 4 }
# 1.
# p h[:b]

# 2.
h[:e] = 5
# p h

# 3.
# h.select { |x| x.delete if x < 3.5}
# correct answer
h.delete_if do |_k, v|
  v < 3.5
end

p h
