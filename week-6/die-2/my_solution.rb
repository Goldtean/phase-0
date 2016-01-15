# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings should be the input. 
# Output: The output should be one of these strings outputted.
#   It's like a die, but with words instead of numbers.
# Steps: My plan is to basically use same concept as my last die, since I thought it was
# relatively efficient. I will start with an if statement to get the ArgumentError out of the way.
# Next I will set sides as a class variable with the amount of entries in the array, then set
# the array to itself as a class variable as well. Next I need to get sides to respond to that, which
# is easy, then find a way to return a random string. This will be almost as easy as the last one,
# except like a similar challenge from the past I need to set the number being called from the array
# to a random number.


# Initial Solution

class Die
  attr :labels
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("You don't like tatoos because they're permanent, but I'm a die and you need to ink me!")
  	else
  	end
  @sides = labels.count
  @labels = labels
  puts "I'm a #{@sides} sided die."
  end

  def sides
  	return @sides
  end

  def roll
  	rando = rand(0..(@sides - 1))
  	return @labels[rando]
  end
end

# dieerror = Die.new([])
die = Die.new(["You will succeed in a new adventure.", 
			   "You will get a chance to climb a mountain.",
			   "Three people in your life will try to usurp your power.",
			   "Your love of nutella is highly regarded in Europe and South America.",
			   "A man with a hipster outfit but a preppy face will serve you a delicious sandwich.",
			   "If you go to a Mexican restaurant, you better not ask for 'no onions' or you will insult the taste gods.",
			   ])

p die.sides
p die.roll

# Refactored Solution
# I looked on ruby docs for a while but I just couldn't find anything to shorten this up that wouldn't make it
# less readable. I am welcome to suggestions!

# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?
	The main difference was what was being passed in. Having an array be passed in instead of having a single number.
What does this exercise teach you about making code that is easily changeable or modifiable? 
	It teaches me something I already kind of knew which is that strings and numbers can get passed the same way.
	My code from the previous challenge was very useful to this challenge. I really don't know what to refactor
	because I used my refactored code from the old challenge as a template and it's pretty clean.
What new methods did you learn when working on this challenge, if any?
	I didn't really need to... I just used ones I already knew.
What concepts about classes were you able to solidify in this challenge?
	What I was able to soldify is how classes work and operate and how and where class variables must be set and where
	they must be called.
=end