# https://www.hackerrank.com/challenges/marcs-cakewalk
def cupcake_miles(cupcakes)
	miles = 0
	consumed_cupcakes = 0
	# sort cupcakes in descending order
	sorted_cupcakes = cupcakes.sort_by { |c| -c }
	p "sorted_cupcakes: #{sorted_cupcakes}"


	sorted_cupcakes.each do |c|
		# 2**j * c (j = number of cupcakes already eaten; c = calories in current cupcake)


		miles += 2**consumed_cupcakes * c

		consumed_cupcakes += 1
	end

	p miles
end

cupcake_miles([1, 3, 2])


=begin
	Example of Data Structure
	[1, 3, 2]	
	

	Test cases
	Eat the cupcake with c[1] = 3 calories, so miles = 0 + (3 * 2 ^ 0) = 3.
	Eat the cupcake with c[2] = 2 calories, so miles = 3 + (2 * 2 ^ 1) = 7.
	Eat the cupcake with c[3] = 1 calories, so miles = 7 + (1 * 2 ^ 2) = 11.

	Possible tests


	def method(arguments)
		variables
		miles
	
		psuedocode
			sort the array in descending order
			init miles to 0
			loop on each element, run it through the formula

				[desc_array].each do |a|
					miles = miles + (a * 2 ^ miles)

					miles += 
				end


		return


		miles
			
	end
=end