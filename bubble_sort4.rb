def bubble_sort(arr)

	arr.length.times do
		arr.each_with_index do |number,index|
			if arr[index+1] != nil && number > arr[index+1]
				arr[index], arr[index+1] = arr[index+1], arr[index]
			end
		end
	end


	p arr
end

def bubble_sort_by(arr)
	arr.length.times do
		arr.each_with_index do |number,index|
			if arr[index + 1] != nil && yield(arr[index],arr[index+1]) > 0
				arr[index], arr[index+1] = arr[index+1], arr[index]
			end
		end
	end

	p arr
end

bubble_sort_by(["hey", "hello", "whatup", "hi"]) do |left,right|
	left.length - right.length
end
