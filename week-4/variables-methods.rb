puts "What is your first name?"

firstname = gets.chomp

puts "What is your middle name?"
	
middlename = gets.chomp

puts "What is your last name?"

lastname = gets.chomp

puts "Hello there, " + firstname + " " + middlename + " " + lastname + "! Nice to meet you."


puts "What is your favorite number, " + firstname +"?"

favnum = gets.chomp
betternum = favnum.to_i + 1

puts "Why not " + betternum.to_s + ", it's bigger and better!"


# Defining methods https://github.com/Goldtean/phase-0/blob/master/week-4/define-method/my_solution.rb
# Math methods https://github.com/Goldtean/phase-0/blob/master/week-4/math/my_solution.rb
# Format address https://github.com/Goldtean/phase-0/blob/master/week-4/address/my_solution.rb

#How do you define a local variable?
# Basically, you just write the name of the variable you want to create making sure to start with a lower case letter.
# Then use the equal sign to make it equal to what you want it equal to. Eg. name = gets.chomp

#How do you define a method?
# def my_method(argument1, argument2, argument3, etc.)
# end
# Basically if you give it arguments and then write parameters inside of it.

#What is the difference between a local variable and a method?
# Variables defined inside of methods will not work if called upon outside of methods.
# Similarly, variables defined outside of methods will not work inside of them.

#How do you run a ruby program from the command line?
# You navigate to the file you want and type: ruby yourfile.rb

#How do you run an RSpec file from the command line?
# The same as running a ruby program, except you type rspec your_spec_file.rb

#What was confusing about this material? What made sense?
# The spec file was a little confusing at first. For the most part it makes sense.
# The material after this is the hard stuff!