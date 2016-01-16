# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 4 hours on this challenge.

# Pseudocode

# Input: The class is initialized with an integer called answer. An integer called guess
# guesses what the answer is.
# Output: symbols :high, :correct, and :low depending on the guess relative to the answer.
# True must also be outputted when asked if the game is solved and it has been.
# Steps: First I need to take answer and make it an instance variable so that I can compare it
# inside of the guess method. Then I can compare it using an if statement, and have each if / elsif
# return :high or :low or :correct.
# Once that works successfully I should try to add solved and set it to false initially then have it
# change if it's true.

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    puts "I'm thinking of a number between 1 - #{@answer}"
  end

  def guess(ask)
  	@ask = ask
  	if  @answer < @ask
  		puts "You're too high!"
  		@solved = false
  		return :high
  	elsif @answer == @ask
  		puts "No fair, you cheated!"
  		@solved = true
  		return :correct
  	elsif @answer > @ask
  		puts "You're too low!"
  		@solved = false
  		return :low	
  	end
  end

  def solved?
  @solved
  end
end

game = GuessingGame.new(25)
game.guess(1)
puts game.solved?
game.guess(100)
puts game.solved?
game.guess(25)
puts game.solved?


# Refactored Solution

# I've read over my initial code and I don't have anything to take out. I could take out the many puts to make it shorter, but other
# than that it's pretty lean in my opinion.

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#   You could set them to a gets.chomp and have them be equal to the input of users, or otherwise they can be arguments passed into
#   clases or methods. 
# When should you use instance variables? What do they do for you?
#  You should use them whenever you need to move a variable across methods, or within a class. You can also use @@ to move them
#  between clases. What they do is that they can represent something that can be changed by different classes inside of a method.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#  My trouble for flow control was that this challenge was written pretty confusingly and I overthought it. I read the chapter on
#  symbols and tried to use them everywhere, but they were only needed when returning each guess. Another small issue I fixed was
#  that I only set the correct answer to change solved to true, so a incorrect answer after the correct answer did not
#  change it back, so I made each if & elsif impact solved instead of just @answer == @ask.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#  I tried to use them more in this challenge and failed, and really I should have just used instance variables the
#  whole time. I know that they are unique and unchangeable, so perhaps they are good at being scalable and there are memory 
#  implications as well as speed implications that are both favourable.