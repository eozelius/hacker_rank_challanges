def mini_max(array)
	min = 0
	max = 0

	sorted_array = array.sort

	# min
	sorted_array[0..3].each do |a|
		min = min + a
	end
	# max
	sorted_array[1..4].each do |a|
		max = max + a
	end

	print "#{min} #{max}"
end


a =	[0, 5, -1, 10, -20]
		[-20, -1, 0, 5, 10]
mini_max(a)



=begin
	Example of Data Structure
	[0, 55, -89, 8385896, -948573]


	Test cases


	Possible tests


	def method(arguments)
		variables
		min
		max
		


		psuedocode
			sort the array, least to greatest
			to find max, take [1..4]
			to find min, take [0..3]

		return
			p "min max"
	end
=end