# Calculate the mode Pairing Challenge

# I worked on this challenge with Lydia Nash.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array of numbers or strings

# What is the output? (i.e. What should the code return?)
# The output is an array of the most frequent value(s)

# What are the steps needed to solve the problem?

# Take the objects from the inputted array and turn them into the keys in an empty hash
# If an object is a duplicate, then add 1 to the key's value
# Create a new array
# Populate array with the keys with the highest value
# output the new array.

# 1. Initial Solution
def mode1(array)
  counter = Hash.new(0)
  array.each do |x|
    counter[x] += 1
  end
  mode_array = []
  counter.each do |y, z| 
    if z == counter.values.max
      mode_array << y
    end
  end
  return mode_array
end
# 
p mode1 [1, 2, 1, "hello", "hello"]

# 3. Refactored Solution

def mode(array)
  c = Hash.new(0)
  array.each{|x| c[x] += 1}
  m = []
  c.each do |y, z| 
    if z == c.values.max
      m << y
    end
  end
  return m
end

p mode [1, 2, 1, "hello", "hello"]


# h = Hash.new {|hash,key| hash[key] = 0}

# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
	We went with a hash. We both thought about it beforehand and both came up with the same idea for our
	approach: get the array into a hash with the key as each element and the value as it's frequency.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
	Yes and no. I find we broke it down the same as with other pairs, we just seemed to have a much better time
	executing. My pair got the first part of the challenge solved very quickly as the driver, and after that 
	everything kind of fell into place.
What issues/successes did you run into when translating your pseudocode to code?
	We just had the standard kind of issues - coding grammar, using puts on the last line of the method which
	returned nil even though our answer was correct, etc.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring?
Were they difficult to implement?
	We used the .each method, and it worked well. Refactoring was difficult because our solution, being about 14
	lines, is not very long, so each line is important. There was no "low hanging fruit". I took out the
	.each do and end.
=end