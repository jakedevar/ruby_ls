# def zip arr1, arr2 
# 	arr1.map.with_index {|ele, ind| [ele, arr2[ind]]}
# end

def zip arr1, arr2 
	arr1.each_with_index.with_object([]) {|(ele, ind), arr| arr << [ele, arr2[ind]] }
end

p [1, 2, 3].zip([4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]