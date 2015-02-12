def bubble_sort(array)

n = array.length - 1

	n.times do
		array = array.map do |x|
			case x <=> array[(array.index(x) + 1)]
			when 1
				y = array[(array.index(x) + 1)]
				array[(array.index(x) + 1)] = x
				x = y
			else
				x = x
			end
		end
	end

print array
end

numbers = ["hey", "hello", "whats","up"]
bubble_sort(numbers)
