# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 5 hours on this challenge (if you include all the reading material, otherwise about
# half an hour for the code and half an hour for the reflection.

# 0. Pseudocode

# Input: the input is a new Die, with a number of sides. 
# Output: a new die that will have as many sides as inputted.
# Steps: Unless I'm missing something, this challenge is infinitely easier than the solo challenge.
#  All I need to do is return the sides of the die, which I can do fairly easily by using the
#  provided shell. Then I will have another method return sides and another method return
#  a random number that's between 1 and the amount of sides, inclusively. Lastly, I will add an
#  argument error somewhere once the rest works.


# 1. Initial Solution

class Die1
  
  def initialize(sides)
    # code goes here
    unless sides > 1
      raise ArgumentError.new("Only real dice are allowed, sonny.")
    end
    @sides = sides
    puts "I am a #{@sides} sided die"
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    range = 1..@sides
    return rand(range)
    end
  
end

# 3. Refactored Solution

class Die
  attr :sides
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Only real dice are allowed, sonny.")
    end
    @sides = sides
    puts "I am a #{@sides} sided die"
  end

  def roll
    return rand(1..@sides)
    end
  
end


a = Die.new(10)
p a.sides
p a.roll


# 4. Reflection
# What is an ArgumentError and why would you use one?
  # ArgumentError is when there is an issue with the argument, in this case if it's 1 sided or less.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing
# them?
  # I implemented unless and rand, as well the whole class system.
# What is a Ruby class?
  # A ruby class kind of like a method where you can call the variables inside. It's something that
  # you build so that you can later use it. In programming terms, because ruby is an object oriented
  # language, a class is an object. But it differs against other objects how it can be called upon.
# Why would you use a Ruby class?
  # Ruby classes are basically used to build other objects. For example, in the code above I create a
  # new die called "a". The class Die is kind of like a framework or instructions for creating the die
  # and giving it the ability to roll and return sides.
# What is the difference between a local variable and an instance variable?
  # A local variable can only be used locally. For example, a local variable inside of a method will
  # not work outside of it. A instance variable can be used outside that method. Local variables are
  # usually undcapitalized and arguments passed into methods are considered local variables.
  # Instance variables start with an @ sign.
# Where can an instance variable be used?
  # Instance variables are bound inside of classes, but they can be used by multiple methods within
  # that class.