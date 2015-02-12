def bubble_sort(array)

switch = true

	while switch == true
		switch = false
		array = array.map do |x|
			if array.index(x) < array.length - 1
			case z = yield(x,array[(array.index(x) + 1)])
			when z > 0
				switch = true
				y = array[(array.index(x) + 1)]
				array[(array.index(x) + 1)] = x
				x = y
			else
				x = x
			end
			end
		end
	end

print array
end

numbers = [2,5,9,3,0,1,30,18,27,4] 

bubble_sort(numbers) do |left,right|
	right - left
end