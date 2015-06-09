File.readlines("name.txt").each do |line| #Go through each line of the file

	if line.strip == line.reverse.strip #check if is palindrome
		puts "#{line} is a palindrome."
	end
	
end
txt.close()