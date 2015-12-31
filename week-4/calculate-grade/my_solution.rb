# Calculate a Grade

# I worked on this challenge Tim Beck.


# Your Solution Below

def get_grade(average)
	if average > 89
		return "A"
	elsif average > 79
		return "B"
	elsif average > 69
		return "C"
	elsif average > 59
		return "D"
	else
		return "F"
	end
end

print get_grade(65)
