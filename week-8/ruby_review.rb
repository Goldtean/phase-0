
# I worked on this challenge by myself.
# This challenge took me 1 hour.


# Pseudocode
# Iterate over an array and repace specific numbers in the array. Use an if statement so that:
# if the number is divisible by 3 and 5 write fizzbuzz, if divisible by 3 write fizz, and if divisible 
# by 5 write buzz.


# Initial Solution

def super_fizzbuzz(array)
	counter = 0
	array.each do |x|
		if ((x % 3 == 0) && (x % 5 == 0))
			array[counter] = "FizzBuzz"
		elsif x % 3 == 0
			array[counter] = "Fizz"
		elsif x % 5 == 0
			array[counter] = "Buzz"
		end
	counter += 1
	end
end




# Refactored Solution

# I could not think of anything to refactor so I decided to make classic fizzbuzz!

def classic_fizzbuzz
	numbers = 1..100
	numbers.each do |x|
		if	((x % 3 == 0) && (x % 5 == 0))
			puts "FizzBuzz"
		elsif x % 3 == 0
			puts "Fizz"
		elsif x % 5 == 0
			puts "Buzz"
		else
			puts x
		end
	end
end

# Reflection

# I have chosen FizzBuzz because I couldn't get it to work in JavaScript, and I'll be damned if I let FizzBuzz
# defeat me twice.


# What concepts did you review or learn in this challenge?
  # If statements, logic, each, and using puts instead of print.
# What is still confusing to you about Ruby?
  # I feel like I can pretty much tackle any problem in Ruby or JavaScript these days. For example,
  # I was having trouble remembering specific Ruby syntax, but I whipped up this code in about 5 minutes and
  # troubleshooted it for about 10 and now it's good.
# What are you going to study to get more prepared for Phase 1?
  # My goal, since I've quit my job already, is to try to finish my work early and try to do as much optional
  # material as possible. I also plan to work on my website to try solidify my JavaScript and HTML / CSS skills.
  # I feel like learning JavaScript has empowered me to basically build any website I want, and I want to
  # test those powers!!! Muahahahahaha!