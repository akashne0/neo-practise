
numbers = [1, 2, 2, 6, 3, 5, 8, 9, 3]

def  summation_number(numbers)
	new_list = Array.new
	0.upto(numbers.length-1).each do |number|	
		(number + 1).upto(numbers.length-1).each do |num|
		# if numbers[number] + numbers[number + 1] == 10
		# 	puts numbers
		# end
			# puts "The number is #{numbers[number]} + #{numbers[num]}"
			if numbers[number] + numbers[num] == 10
				puts "The combination is #{numbers[number]} and #{numbers[num]} "
				# puts "The index positions are #{number} and #{num} "

					new_list << [number,num]

			end
		end
	end
	 return new_list
end

puts summation_number(numbers).inspect