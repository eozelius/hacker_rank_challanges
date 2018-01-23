def insertionSort1(n = 0, arr)
	# print " #{arr}\n\n"
	return_arr = arr.clone
	length = arr.length - 1
	to_be_sorted = return_arr[length]

	length.times do |i|
		position = (arr.length - i) - 2
		element = arr[position]
	#	p "pos => #{position}  elem => #{element}  s => #{to_be_sorted}"


		#.            1 >= 2
		if to_be_sorted >= element
			# Sorted position found
			return_arr[position + 1] = to_be_sorted
			return pp_array(return_arr)
		else
			# continue searching
			return_arr[position + 1] = return_arr[position]
			pp_array return_arr
		end
	end

	return_arr[0] = to_be_sorted
	# print "\n final => "
	return_arr
end

def pp_array(array)
	array.each do |a|
		print "#{a} "
	end
	print "\n"
end

# n = gets.strip.to_i

# arr = [2, 4, 6, 3, 3]
arr = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
# arr = [2, 4, 6, 8, nil]
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)
pp_array(insertionSort1(arr))