def apple_picker(array)
	new_array = []
	array.each do |fruit|
		if fruit == "apple"
			new_array << fruit
		end
	end
	new_array
end

apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]