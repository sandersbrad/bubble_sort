def bubble_sort_by(arr)
	repeat = true
	while repeat do
		repeat = false
		0.upto(arr.length - 2) do |index|
			if yield(arr[index],arr[index + 1]) > 0
				arr[index],arr[index+1]=arr[index+1],arr[index]
				repeat = true
			end
		end
	end
	p arr
end

bubble_sort_by([0,3,78,2,0,2,9,15,88]) do |left,right|
	left - right
end
