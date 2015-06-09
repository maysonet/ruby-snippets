#Ruby version of the Text Adventure Game - Zork Adventures Part 1

def prompt
	print "> "
end

def action
	puts "What do you do?"
end

div = "--------------------------------------------------------"

def start()
	puts "%s\n%s\n%s" % ["You are standing in an open field west of a white house, with a boarded front door.", "(A secret path leads southwest into the forest.)", "There is a small mailbox."] 
	action; prompt
	next_move = gets.chomp

	if next_move.downcase.include? "take mailbox"
		puts "You cannot be serious."
		start()
	elsif next_move.downcase.include? "open mailbox"
		puts "Opening the small mailbox reveal a leaflet"
		start()
	elsif next_move.downcase.include? "go east"
		puts "The door is boarded and you cannot remove the boards."
		start()
	elsif next_move.downcase.include? "open door"
		puts "The door cannot be opened."
		start()
	elsif next_move.downcase.include? "take boards"
		puts "The boards are securely fastened"
		start()
	elsif next_move.downcase.include? "look at house"
		puts "The hose is a beautiful colonial house which is painted white. It is clear that the owners must have been extremely wealthy."
		start()
	elsif next_move.downcase.include? "read leaflet"
		puts "Welcome to Zork. Your mission is to find a Jade Statue."
		start()
	elsif next_move.downcase.include? "go southwest"
		forest()
	else 
		puts "I dont understand that command."
		start()
	end

end

def forest()
	puts "This is a forest, with trees in all directions.To the east, there appears to be sunlight."
	action; prompt
	next_move = gets.chomp

	if next_move.downcase.include? "go west"
		puts "You would need a machete to go further west."
	elsif next_move.downcase.include? "go north"
		puts "The forest becomes impenetrable to the North."
	elsif next_move.downcase.include? "go south"
		puts "Storm-tossed trees block your way."
	elsif next_move.downcase.include? "go east"
		east_forest()
	else
		puts "I dont understand that command."
		forest()
	end

end

def east_forest()
	puts  "%s\n%s\n" % ["You are in a clearing, with a forest surrounding you on all sides.A path leads south.","There is an open grating, descending into darkness."]
	action; prompt
	next_move = gets.chomp

	if next_move.downcase.include? "go south"
		puts "You see a large ogre and turn around."
		east_forest()
	elsif next_move.downcase.include? "descend grating"
		grating()
	else
		puts "I dont understand that command."
		east_forest()
	end

end

def grating()
	puts  "%s\n%s\n" % ["You are in a tiny cave with a dark, forbidding staircase leading down.", "There is a skeleton of a human male in one corner."]
	action; prompt
	next_move = gets.chomp

	if next_move.downcase.include? "descend staircase"
		mud_room()
	elsif next_move.downcase.include? "take skeleton"
		puts division
		puts "Why would you do that? Are you some sort of sicko?"
		grating()
	elsif next_move.downcase.include? "smash skeleton"
		puts "Sick person. Have some respect mate."
		grating()
	elsif next_move.downcase.include? "light up room"
		puts "You would need a torch or lamp to do that."
		grating()
	elsif next_move.downcase.include? "break skeleton"
		puts "I have two questions: Why and With What?"
		grating()
	elsif next_move.downcase.include? "go down staircase"
		mud_room()
	elsif next_move.downcase.include? "scale staircase"
		mud_room()
	elsif next_move.downcase.include? "suicide"
		suicide()
	else 
		puts "I dont understand that command."
		grating()
	end

end

def mud_room()
	puts "%s\n%s\n" % ["You have entered a mud-floored room.", "Lying half buried in the mud is an old trunk, bulging with assorted jewels."]
	action; prompt
	next_move = gets.chomp

	if next_move.downcase.include? "open trunk"
		puts "You have found the Jade Statue and have completed your quest!"
	else
		puts "I dont understand that command."
		mud_room()
	end

	puts "Do you want to continue? (Y/N)"
	prompt; continue = gets.chomp

	if continue.downcase == "y" or exit.downcase == "yes"
		start()
	else
		abort
	end

end

def suicide()
	puts "%s\n%s\n" % ["You throw yourself down the staircase as an attemp at suicide.", "Do you want to continue?"]
	reset = gets.chomp

	if reset.downcase == "y" or reset.downcase == "yes"
		start()
	else
		abort
	end

end

puts "%s\n\t%s\n%s\n" % [div,"Welcome to Zork - Ruby version", div]
start()