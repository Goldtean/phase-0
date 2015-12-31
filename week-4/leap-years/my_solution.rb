# Leap Years

# I worked on this challenge with Tim Beck.


# Your Solution Below

def leap_year?(year)
	if (year % 4 != 0)
		return false
	else		
		if (year % 4 == 0) && (year % 100 != 0)
			return true
		elsif (year % 100 == 0) && (year % 400 != 0)
			return false
		elsif (year % 100 == 0) && (year % 400 == 0)
			return true	
		end
	end
end

p leap_year?(2016)