# I worked on this challenge by myself.
# This challenge took me 2 hours.

# Pseudocode
# The truth is I have no clue how to calculate this.
# I know what fibonacci is, but I have no idea how to back test it. The problem is that while 
# 1, 1, 2, 3, 5, 8, etc. are all fibonacci, the ratio of each number is different
# (2/1 = 2, 3/2 = 1.5, 5/3 = 1.666) So I can't use the ratio to test.
# Normally, when I have no clue I get started and then that powers me through to figuring it out.
# So first I will figure out the fibonacci formula in Ruby, because I've found the arithmetic version.
# I will define this formula as a method, and with it I will be able to know any fibonacci number.
# Then I'm thinking for every number, I can run it until the fibonacci formula's number is equal
# to the tested number (return true) or greater than the tested number (return false).
# This is my initial thinking, and it could change, since I am pulling all of this out of my butt since I
# have no idea what the best solution is. Good thing I like mind puzzles!


# Initial Solution


# def is_fibonacci?(num)
# 	num = num
# 	fib = 0
# 	ber = 0

# 	while fib < num
	
# 	phi = ((1 + Math.sqrt(5)) / 2)
# 	x = ((phi ** ber) - ((-1 / phi) ** ber)) / Math.sqrt(5)
# 	fib = x.round
# 		puts ber
# 		puts num
# 		puts fib
# 		ber += 1
# 	end

# 	if num == fib
# 		puts "True"
# 	return true

# 	elsif num < fib
# 		puts "False"
# 		return false
# 	end

# end


# puts is_fibonacci?(8670007398507948658051921)

# solution above stops working somewhere between numbers 70-80, I believe due to rounding
# So I have found a second formula that tells you if any given number is fibonacci.
# N is a Fibonacci number if 5 N^2 + 4 or 5 N^2 – 4 is a square number.
# This solution suffers from the same issue however, rounding. So I will
# use bigdecimal to compute the squareroot of that formula, and then use modulus 1 to see if there
# is a remainder in the number. If there is a remainder, then the result of the formula is not a perfect
# square root and therefore not a fibonacci number.

# I have tried to work my formula above using bigdecimal, but I can't get it to work.

# Second Initial Solution

require 'bigdecimal'

def is_fibonacci?(num)
  num = BigDecimal.new(num)

  this = ((5 * (num ** 2)) + 4).sqrt(2)
  that = ((5 * (num ** 2)) - 4).sqrt(2)

  if this % 1 == 0
  	return true
  elsif that % 1 == 0
  	return true
  else
  	return false
  end

end

puts is_fibonacci?(8670007398507948658051921)

# Refactored Solution

# I can't really think of anything to change. I thought this would be a pretty simple challenge, but I'm now
# like 4-5 hours in and just cracked it.


# Reflection

# What concepts did you review in this challenge?
# I learned a quick and easy way to figure out if a number is a square root - number % 1 == 0
# I learned bigdecimal, and solidified stuff like loops and if statements and while statements.
# What is still confusing to you about Ruby?
# Big decimal still confuses me - I tried to implement it in my first solution and it does not work.
# This was a deceptive challenge. I picked it thinking it would be relatively easy, and it turned
# extremely hard.
# What are you going to study to get more prepared for Phase 1?
# I was going to do a few more Ruby review things, but this one took so long that I don't know if I'll have time
# for too many more! Hopefully if I can finish my website revision I can do another Ruby challenge or two.