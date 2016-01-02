# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
	while true
    puts "What's there to hate about #{thing}?"
end end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# I believe the error was the "while true" needed an "end" that never came. Also, the "while true" is not necessary.
# 6. Why did the interpreter give you this error?
# The interpreter was expecting two "end"s, one for the while true and one for the method itself. 

# --- error -------------------------------------------------------

south_park = "A great TV Show"

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# There is an undefined variable or method, south_park.
# 5. Why did the interpreter give you this error?
# You need to define your variables or make them methods and then define that.

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# There is an undefined method. cartman() has no argument and no definition.
# 5. Why did the interpreter give you this error?
# cartman() needs to both be defined and it needs to pass arguments.

# --- error -------------------------------------------------------

def cartmans_phrase(a)
  puts a + " also, " "I'm not fat; I'm big-boned!"
end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# cartmans_phrase has no arguments.
# 5. Why did the interpreter give you this error?
# It expected cartmans_phrase to pass an argument (or multiple arguments) and it did not get any.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# cartman_says("No kitty, this is my pot pie!")

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
# cartman_says on line 88 needs to pass an argument as a string.
# 5. Why did the interpreter give you this error?
# cartman_says was defined as a method and called, but did not pass an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "I hate you, Kenny.")

# 1. What is the line number where the error occurs?
# 109
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# Line 109 - cartmans_lie needs to pass two arguments instead of one.
# 5. Why did the interpreter give you this error?
# It was expecting two arguments to be passed through cartmans_lie and there was just one.

# --- error -------------------------------------------------------

# puts "Respect my authoritay!" * 5 

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# (TypeError)
# 4. Where is the error in the code?
# Line 124, arithmetic cannot be mixed between strings and integers / floats.
# 5. Why did the interpreter give you this error?
# You cannot multiply in this fashion. ruby doesn't know if you want 5 of each letter, or each letter amounts of 5.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError)
# 4. Where is the error in the code?
# You cannot divide a number by zero. Well, you can but the answer is infinity and ruby can't handle it.
# 5. Why did the interpreter give you this error?
# The amount_of_kfc_left cannot be 20/0, that would imply there are 20 out of 0 pieces of chicken left. It should be 0/20.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# /Users/ieronimoltean/Desktop/devb/phase-0/week-4/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# Line 155 requires a file "cartmans_essay.md" exist inside of the same directory.
# 5. Why did the interpreter give you this error?
# The fle is expected to exist and it does not.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
#  	The only one that gave me some trouble was the first one.
# How did you figure out what the issue with the error was?
# 	I got it by reading the error carefully, since it says expecting keyword end.
# Were you able to determine why each error message happened based on the code?
# 	Yes, and by looking at the code itself.
# When you encounter errors in your future code, what process will you follow to help you debug?
#   I will use a similar approach, looking for the line of code and the reason.
#   The error message also tells if the error is inside a method or not.