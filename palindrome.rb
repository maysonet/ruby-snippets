input_file = File.open("name.txt")
File.readlines(input_file).each do |line| #Go through each line of the file

	if line.strip == line.reverse.strip #check if is palindrome
		puts "#{line.chomp} is a palindrome."
	end
	
end
input_file.close()
