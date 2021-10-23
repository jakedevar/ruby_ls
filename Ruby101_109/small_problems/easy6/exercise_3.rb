# exericse_3.rb

def find_fibonacci_index_by_length(int)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= int
    first = second
    second = fibonacci
  end
  index
end

# Im going to be honest. I was totally lost on this one for one i didnt even understand the problem
# untill i revisited it again someitme later. still how to even do this one was baffeling me and I figured
# i coul learn somehting if  Ilooked at the solution

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
