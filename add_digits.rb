#Sum all the digits of all numbers in the file
numbers = []
input_file = File.open("numbers.txt")
File.readlines(input_file).each do |number|
	number = number.to_i

	while number > 0
		digit = number % 10
		number /= 10
		numbers.push(digit) #add digit to array of numbers
	end

end
input_file.close()

puts numbers.inject(:+) #sum the numbers in the array
