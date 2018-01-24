=begin
	Example of Data Structure

	Test cases

	Possible tests


	def solve(grades[...])
		variables
		n/a
	
		psuedocode
			grades.map do |g|
				if g >= 38

				# find next highest multiple of 5
				if next_highest_mult_of_5 - grade < 3
					grade = next_highest_mult_of_5
				end

			end

		return
			
	end
=end

def next_five(int)
	(1..4).each do |x|
		if (int + x) % 5 == 0
			return int + x
		end
	end
end


def solve(grades)
  return_arr = []

  grades.each do |g|
  	if g >= 38
  		next_5 = next_five(g)
  	 	if next_5 - g < 3
	 			return_arr.push(next_5)
	 		end
  	end
  	return_arr.push(g)
  end

  p return_arr
end

grades = [73, 67, 38, 33]

result = solve(grades)
# print result.join("\n")



