def bubble_sort(array)

	new_array = array.map do |x|
		if (array.index(x) < array.length - 1)
			if x > array[(array.index(x)+1)]
				x,array[(array.index(x) + 1)] = array[(array.index(x) + 1)],x
			else
				x=x
			end
		end
	end

print new_array

end

numbers = [6,3,10,9]
bubble_sort(numbers)