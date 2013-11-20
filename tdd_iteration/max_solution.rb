# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class

def maximum(arr)
	if arr.length == 0
		[]
	else
		arr.sort!
		arr.last
	end
end


# now rewrite this as a method on the array class
# class Array
#   def maximum
# 	#arr.sort!
# 	#arr.last
#   end
# end
