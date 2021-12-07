# class Array
# 	def zip arr 
# 		counter = 0 
# 		res = [] 
# 		until counter == arr.size 
# 			res << [self[counter], arr[counter]]
# 			counter += 1
# 		end
# 		res 
# 	end
# end

	# def zip arr1, arr2  
	# 	counter = 0 
	# 	res = [] 
	# 	until counter == arr.size 
	# 		res << [arr1[counter], arr2[counter]]
	# 		counter += 1
	# 	end
	# 	res 
	# end

# def zip arr1, arr2
# 	arr1.each_with_object([]) do |(element, index), arr|
# 		arr << [element, arr2[index]]
# 	end
# end

def zip arr1, arr2 
	(0...arr1.size).map {|ele| [arr1[ele], arr2[ele]]}
end

p [1, 2, 3].zip([4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]