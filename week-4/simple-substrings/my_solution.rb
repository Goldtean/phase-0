# Simple Substrings

# I worked on this challenge by myself, but my pair was on standby if I needed help (Tim Beck) because he's a good dude.


# Your Solution Below

def welcome(address)
	if address.include? "CA"
		return "Welcome to California"
	else
		return "You should move to California"
	end
end

p welcome("Calgary")