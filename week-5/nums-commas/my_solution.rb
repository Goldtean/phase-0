# Numbers to Commas Solo Challenge

# I spent 7 hours on this challenge. The final refactored solution is separate_comma. All three work.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#  The input is a positive integer.
# What is the output? (i.e. What should the code return?)
#  The code should return a string with the number and commas for every third zero.
# What are the steps needed to solve the problem?
#  My initial thinking is to first turn the argument into a string right away so I can count length.
#  I like to get started by doing the easiest part first so I can feel good about myself and
#  put something on the board, so first I will make an if statement to return the integer as a string
#  if the length is 3 or less. Then I need to think of the other possibilities, and how to encompass
#  them all.

#  There are three possibilities if the integer has more than 3 digits. The length is either
#  divisible by 3, length - 1 is divisible by 3, or length - 2 is divisible by 3.
#   1) length % 3 == 0
#   2) (length - 1) % 3 == 0
#   3) (length - 2) % 3 == 0
#  My statistics & probabilities knowledge tells me this encompases 100% of possibilities.
#  So I will do some if statement inception with an if statement inside the first if statement,
#  then test it. Then I need to figure out rules for using insert to add commas.
#  The hardest part is getting the the insert to scale to any number of length so I need to
#  think of some possible ways to get that to happen.

#  Trying to logic this out, I need to figure out possibility 1) length % 3 == 0 then the
#  rest will follow. I will research all of the ways to manipulate .insert.
#  .insert works like this: "abcd".insert(0, ",") => ",abcd" Ruby docs has nothing on advanced insert
#  methods and google is no help.
#  Getting .insert(3, ",") for 1000 is easy, so I'll start with that so I can put that on the board
#  and think about the logic and how I can apply it with my existing knowledge.

#  I need it to .insert(3, ",") + .insert (3+3, ",") + ... and so on, (length/3 - 1) amount of times
#  assuming length % 3 == 0

# 1. Initial Solution
def separate_comma_initial(integer)
  a = integer.to_s
  b = a.length
  if b <= 3
  	return a
  elsif b > 3
  	if (b) % 3 == 0
#  So I will attempt to replace 3 with n, and have n change (length/3 - 1) amount of times.
#  I need to figure out how to incorporate a -= counter for n that runs length/3 amount of times.
#  I could make the n in .insert(n, ",") equal to the number of commas * 3 and use -= to take 3 away
#  from n (length/3-1) amount of times.
  		number_of_commas1 = ((b / 3) - 1)
  		n = 3 * number_of_commas1
  		number_of_commas1.times do 
  		a.insert(n, ",")
  		n -= 3
  		end
  		return a

  	elsif (b - 1) % 3 == 0
#  This was much easier - I copied and pasted the above, and changed length/3-1 to length-1/3 and n
#  to the number of commas times 3 minus 2.
		number_of_commas2 = ((b - 1) / 3)
  		n = (3 * (number_of_commas2)) - 2
  		number_of_commas2.times do 
  		a.insert(n, ",")
  		n -= 3
  		end
  		return a

  	elsif (b - 2) % 3 == 0
#  Similarly, I changed this to length minus 2 divided by 3, and n to number of commas times 3
#  minus 1.
  		number_of_commas3 = ((b - 2) / 3)
  		n = (3 * (number_of_commas3)) - 1
  		number_of_commas3.times do 
  		a.insert(n, ",")
  		n -= 3
  		end
  		return a

  	end
  end
end

# 2. Refactored Solution

def separate_comma_refactor(integer)
  a = integer.to_s
  b = a.length

  	if b % 3 == 0
  		c = ((b / 3) - 1)
  		n = 3 * (c)
  		c.times do 
  		a.insert(n, ",")
  		n -= 3
  		end
  		return a

  	elsif (b - 1) % 3 == 0
		c = ((b - 1) / 3)
  		n = (3 * (c)) - 2
  		c.times do
  		a.insert(n, ",")
  		n -= 3
  		end
  		return a

  	elsif (b - 2) % 3 == 0		
  		c = ((b - 2) / 3)
  		n = (3 * (c)) - 1
  		c.times do
  		a.insert(n, ",")
  		n -= 3
  		end
  		return a
  	else
  		return a
  	end
end

def separate_comma(integer)
	a = integer.to_s.reverse!
	c = (a.length/3)
	n = 3 * c
	c.times do a.insert(n, ",")
		n -= 3
	end
	return a.chomp(",").reverse

end

p separate_comma(305724672046921350723764130957236024620)
p separate_comma(3057246720469213072376413095723602462470)  	
p separate_comma(30572467204692135072376413095723602462470)
p separate_comma(1000)
p separate_comma(1000000)
p separate_comma(0)
p separate_comma(100)

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
#  Please see comments above.

# Was your pseudocode effective in helping you build a successful initial solution?
#  Yes, it got to the right solution and it helped me set up a framework for solving the problem.

# What new Ruby method(s) did you use when refactoring your solution?
# Describe your experience of using the Ruby documentation to implement it/them
# (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#  Refactor # 1
#  I had an extremely difficult time refactoring and read ruby docs for a long time with no avail.
#  I thought .gsub looked interesting, but I don't know how to substitute a group of numbers with
#  themselves plus a comma and set the rules around that up.
#  So I shortened names as much as possible. I took out the if statement inception since I could cut
#  a lot of code by using just a final else. Other than that I couldn't figure anything out. 
#  Refactor # 2
#  Thinking it over, it could be possible to reverse the string and then add a comma every 3
#  3 characters, removing the need for an if statement. I was having an extremely difficult time
#  figuring out a rule for the proper amount of commas, then instead of using logic I just used chomp.

# How did you initially iterate through the data structure?
#  I figured out a formula for the amount of commas necessary based on the integer's string's length
#  then used a similar formula for placement.

# Do you feel your refactored solution is more readable than your initial solution? Why?
#  Yes, it's shorter and simpler. It went from like 30 lines to 9. Reversing was something I should
#  have done from the onset, but it felt good to figure out how to do this two different ways.