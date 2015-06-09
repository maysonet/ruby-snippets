#Sum all the digits of all numbers in the file
numbers = []
File.readlines("numbers.txt").each do |number|
number = number.to_i
	while number > 0
		digit = number % 10
		number /= 10
		numbers.push(digit) #add digit to array of numbers
	end
end

puts numbers.inject(:+) #sum the numbers in the array