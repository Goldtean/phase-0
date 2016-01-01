# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Timothy Beck.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Add each element of the array together.
# Steps to solve the problem. Define the method which takes an array, then add each integer.


# 1. total initial solution

def total(a)
	sum = 0
	a.each {|a| sum += a}
return sum
end


p total([10,5,200])

# 3. total refactored solution

def total(a) 
	a.inject {|sum, a| a + sum}
end
p total([10,5,200])

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of words.
# Output: Add each element of the array using string arithmetic.
# Steps to solve the problem. Try to emulate the first addition solution to get all the array elements in a string.
# Then 1) Add spaces after each letter; 2) Capitalize; 3) Chop off the last space; and, 4) add a period.


# 5. sentence_maker initial solution

def sentence_maker(a)
	sum = ""
	a.each {|a| sum += (a + " ")}

return sum.chomp(" ").capitalize + "."
end
p sentence_maker(["hey", "there", "guy"])


# 6. sentence_maker refactored solution

def sentence_maker(a)
	sentence = a.join(" ")
return sentence.capitalize + "."
end

test = ["hello", "how", "are", "you"]
p sentence_maker(test)