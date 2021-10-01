x = (5..10).chain([1, 2])


p x.to_a.chunk {|n| n.even?}.each {|even, arr| p arr}