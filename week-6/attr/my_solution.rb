#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: A class
# Output: A string including a variable from the first class.
# Steps: First I need to create a class, NameData, that returns my name. Then I need to create another new class, Greetings, 
# using the provided template. Greeting will initialize as a new class of NameData, and then greet. Hopefully I can call on
# name inside of a string.

class NameData
  def name
  	return "Jeremy"
  end
end


class Greetings
  def initialize
  	@greeting = NameData.new
  end

  def greet
  	puts "Hello student #{@greeting.name}! How wonderful to see you today."
  end

end

greeter = Greetings.new
greeter.greet

# Reflection

# Release 1
# What are these methods doing?
  # These methods are creating a profile with name, age, and occupation, then changing those variables.
# How are they modifying or returning the value of instance variables?
  # Because the isntance variables are set to arguments, they are being changed by giving new arguments
  # to the change methods which in turn set the instance variables to the new arguments.

# Release 2
# What changed between the last release and this release?
  # what_is_age being set to age was removed, and attr_reader :age was added. 
# What was replaced?
  # what_is_age was was replaced and no longer needed. In turn, methods that called on it instead just called
  # on age.
# Is this code simpler than the last?
  # The code is simpler, yes. Instead of having a method ask what age is, we can just call age.

# Release 3
# What changed between the last release and this release?
  # Instead of change_my_age being defined as a method, attr_writer :age was added. This enabled age to be able
  # to be changed by just setting it to something else, instead of needing a method.
# What was replaced?
  # Instead of calling on change_my_age and passing in a new argument as the age, age was just set equal to
  # a different number.
# Is this code simpler than the last?
  # Yes, it's simpler to read, there are less lines, and it's less cluttered.

# Release 6 - Final Reflection
# What is a reader method?
  # It is a way to allow an instance variable to be read from outside of a class.
# What is a writer method?
  # It is a way to allow an instance variable to be changed from outside of a class.
# What do the attr methods do for you?
  # They save you from needing to define a method inside of a class to allow you to change a variable.
# Should you always use an accessor to cover your bases? Why or why not?
  # You should only use then when you need them. Sometimes you may not want to allow access to a class. For example,
  # you might let someone change their password on a website but you might ot allow them to view it.
# What is confusing to you about these methods?
  # What's confusing to me is how I was supposed to use attr in this challenge - I didn't and I hope that's okay.