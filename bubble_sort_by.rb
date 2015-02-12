def bubble_sort_by(array)

switch = true

	while switch == true
		array = array.map do |x|				
			switch = false
			if array.index(x) < (array.length - 1)
			if yield(x,array[(array.index(x) + 1)]) < 0
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

numbers = ["hey", "hello", "whats","up"]
bubble_sort_by(["tt", "fffff", "aa", "u", "eee"]) do |left,right|
	right.length - left.length
end