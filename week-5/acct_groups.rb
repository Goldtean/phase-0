# Week 5 Accountability Groups Challenge
# Done by myself, taking 6 hours to complere.

# Pseudocode
	# I know you guys love when you write out the whole process before getting started, but I kind of like
	# to write out the first part and then get started and that will usually power me through to the next parts.
	# My first step is to take this list of people, copied and pasted from the instructure site, and turn it into
	# a hash. I want to get rid of all the repeated names and only keep name and job (student, guide, etc.)
	# I was thinking of keeping Fiddler Crabs, but that'll make this harder and won't add value to this task.
	# I could do this with my mouse and keyboard, but I didn't get into this course to be a caveman.
	# Then I'll need to think about how to seperate them all into groups, but that will be much easier after I get them
	# split up into a hash.

	# I need to research splitting by new line, then I need to go over advanced methods of seperation.

	# I found a way to get all of the first list lines and last lines into a hash as a key value pair. Next step
	# is to get a new array from all the keys with value of student. Then I can get them into 4 person groups.

list =
"Adell Hanson-Kahn (Guide)
Adell Hanson-Kahn (Guide)	
Fiddler Crabs 2016
TA
Alex DeLaPena (Guide)
Alex DeLaPena (Guide)	
Fiddler Crabs 2016
TA
Bison Hubert (Guide)
Bison Hubert (Guide)	
Fiddler Crabs 2016
TA
Caitlyn Yu (Guide)
Caitlyn Yu (Guide)	
Fiddler Crabs 2016
TA
Caroline Artz (Guide)
Caroline Artz (Guide)	
Fiddler Crabs 2016
TA
Celeen Rusk (Guide)
Celeen Rusk (Guide)	
Fiddler Crabs 2016
TA
Gary Sperka (Guide)
Gary Sperka (Guide)	
Fiddler Crabs 2016
TA
Iulia Soimaru (Guide)
Iulia Shoimaru (Guide)	
Fiddler Crabs 2016
TA
James Hwang (Guide)
James Hwang (Guide)	
Fiddler Crabs 2016
TA
John Dees (Guide)
John Dees (Guide)	
Fiddler Crabs 2016
TA
Katy Duncan (Guide)
Katy Duncan (Guide)	
Fiddler Crabs 2016
TA
Laura Crowe (Guide)
Laura Crowe (Guide)	
Fiddler Crabs 2016
TA
Lorena Mesa (Guide)
Lorena Mesa (Guide)	
Fiddler Crabs 2016
TA
Matt Higgins (Guide)
Matt Higgins (Guide)	
Fiddler Crabs 2016
TA
Michael Hamel (Guide)
Michael Hamel (Guide)	
Fiddler Crabs 2016
TA
Morgan McCrory (Guide)
Morgan McCrory (Guide)	
Fiddler Crabs 2016
TA
Morgan O'Leary (Guide)
Morgan O'Leary (Guide)	
Fiddler Crabs 2016
TA
Neal Peters (Guide)
Neal Peters (Guide)	
Fiddler Crabs 2016
TA
Sarah Taurchini (Guide)
Sarah Taurchini (Guide)	
Fiddler Crabs 2016
TA
John Seo
Dong Wook Seo (John)	
Fiddler Crabs 2016
Student
Aaron Hu
Aaron Hu	
Fiddler Crabs 2016
Student
Adam Pinsky
Adam Pinsky	
Fiddler Crabs 2016
Student
Akeem Street
Akeem Street	
Fiddler Crabs 2016
Student
Alex Forger
Alex Forger	
Fiddler Crabs 2016
Student
Andrew Kim
Andrew Kim	
Fiddler Crabs 2016
Student
Baron Kwan
Baron Kwan	
Fiddler Crabs 2016
Student
Brian Bier
Brian Bier	
Fiddler Crabs 2016
Student
Byron Gage
Byron Gage	
Fiddler Crabs 2016
Student
Carl Conroy
Carl Conroy	
Fiddler Crabs 2016
Student
Charlie Bliss
Charlie Bliss	
Fiddler Crabs 2016
Student
Christopher Bunkers
Christopher Bunkers	
Fiddler Crabs 2016
Student
Cody Kendall
Cody Kendall	
Fiddler Crabs 2016
Student
Coline Forde
Coline Forde	
Fiddler Crabs 2016
Student
David Valencia
David Valencia	
Fiddler Crabs 2016
Student
Emily Bosakowski
Emily Claire Bosakowski	
Fiddler Crabs 2016
Student
Everett Golden
Everett Golden	
Fiddler Crabs 2016
Student
Hagai Zwick
Hagai Zwick	
Fiddler Crabs 2016
Student
Heather C
Heather Conklin	
Fiddler Crabs 2016
Student
Ian Wudarski
Ian Wudarski	
Fiddler Crabs 2016
Student
Ieronim Oltean
Ieronim Oltean	
Fiddler Crabs 2016
Student
Jake Hamilton
Jake Hamilton	
Fiddler Crabs 2016
Student
James Boyd
James Boyd	
Fiddler Crabs 2016
Student
Jasmeet Chatrath
Jasmeet Chatrath	
Fiddler Crabs 2016
Student
Jenna El-Amin
Jenna El-Amin	
Fiddler Crabs 2016
Student
Jerrie Evans
Jerrie Evans	
Fiddler Crabs 2016
Student
Joe Case
Joe Case	
Fiddler Crabs 2016
Student
Jonathan Case
Jonathan Case	
Fiddler Crabs 2016
Student
Jonathan Schwartz
Jonathan Schwartz	
Fiddler Crabs 2016
Student
Jonathan Silvestri
Jonathan Silvestri	
Fiddler Crabs 2016
Student
Kathryn Garbacz
Kathryn Garbacz	
Fiddler Crabs 2016
Student
Ian Kinner
Ian Kinner	
Fiddler Crabs 2016
Student
Kyle Cierzan
Kyle Cierzan	
Fiddler Crabs 2016
Student
Kyle Zelman
Kyle Zelman	
Fiddler Crabs 2016
Student
Andrew Larson
Andrew Larson	
Fiddler Crabs 2016
Teacher
Linda Oanh Ho
Linda Oanh Ho	
Fiddler Crabs 2016
Student
Yiorgos Makridakis
Yiorgos Makridakis	
Fiddler Crabs 2016
Student
Charlotte Manetta
Charlotte Manetta	
Fiddler Crabs 2016
TA
Matt Harris
Matt Harris	
Fiddler Crabs 2016
Student
Matthew Baquerizo
Matthew Baquerizo	
Fiddler Crabs 2016
Student
Menuka Samaranayake
Menuka Samaranayake	
Fiddler Crabs 2016
Student
Michael Pintar
Michael Pintar	
Fiddler Crabs 2016
Student
Mollie Stein
Mollie Stein	
Fiddler Crabs 2016
Student
Lydia Nash
Lydia Nash	
Fiddler Crabs 2016
Student
Aaron Opsahl
Aaron Opsahl	
Fiddler Crabs 2016
Student
Peter Leong
Peter Leong	
Fiddler Crabs 2016
Student
Peter Stratoudakis
Peter Stratoudakis	
Fiddler Crabs 2016
Student
Prince Sadie
Prince Sadie	
Fiddler Crabs 2016
Student
Ryan F. Salerno
Ryan F. Salerno	
Fiddler Crabs 2016
Student
Sanderfer Chau
Sanderfer Chau	
Fiddler Crabs 2016
Student
Sarah Finken
Sarah Finken	
Fiddler Crabs 2016
Student
EMMET SUSSLIN
EMMET SUSSLIN	
Fiddler Crabs 2016
Student
Sydney Rossman-Reich
Sydney Rossman-Reich	
Fiddler Crabs 2016
Student
Eric Tenza
Eric Tenza	
Fiddler Crabs 2016
Student
Thomas Yancey
Thomas Yancey	
Fiddler Crabs 2016
Student
Tim Kelly
Tim Kelly	
Fiddler Crabs 2016
Student
Timothy Beck
Timothy Beck	
Fiddler Crabs 2016
Student
Tyler Doerschuk
Tyler Doerschuk	
Fiddler Crabs 2016
Student
Lucas Willett
Lucas Willett	
Fiddler Crabs 2016
Teacher"

# Below, commented out, is my un-refactored code. Basically, I turn everyone into a hash and return
# a group of 4 students using .each_slice.

# splitlist = list.split(/\n/)

# name = splitlist.each_slice(4).map(&:first)
# job = splitlist.each_slice(4).map(&:last)

# puts "There are " + name.count.to_s + " cohort members with " + job.count.to_s + " jobs."
# if job.count == name.count
# puts "That is a 0% unemployment rate."
# end

# class Fiddler_Crabs
# 	def initialize(name, job)
# 		@name = name
# 		@job = job
# 		@listhash = Hash[@name.zip @job]
		
# 		puts @listhash		
# 	end

# 	def count_guides
# 		puts @job.count
# 	end

# 	def student_hash
# 		@students = @listhash.select{|key, value| value =="Student" }
# 		puts @students.count
# 		puts @listhash.count
# 	end

# 	def student_accountability_groups
# 		@accountability = @students.each_slice(4).to_a
# 		print @accountability
# 	end

# 	def guide_hash
# 		@guides = @listhash.select{|key, value| value =="TA" }
# 		puts @guides.count
# 	end

# end

# Refactor

splitlist = list.split(/\n/)

name = splitlist.each_slice(4).map(&:first)
job = splitlist.each_slice(4).map(&:last)



class Fiddler_Crabs

	def initialize(name, job)
		unless job.count == name.count
			raise ArgumentError.new("Everyone must have a job!")
		end
		@name = name
		@job = job
		@listhash = Hash[@name.zip @job]
	end

	def student_hash
		@students = @listhash.select{|key, value| value =="Student" }
	end

	def student_accountability_groups
		@accountability = @students.each_slice(4).to_a
		@groups = (@students.count / 4)
		n = 0
		@groups.times do puts "Group: " + (n + 1).to_s + @accountability.slice(n).to_s 
			n += 1
		end
	end

	def guide_hash
		@guides = @listhash.select{|key, value| value =="TA" }
	end

end


fid = Fiddler_Crabs.new(name, job)
fid.student_hash
fid.guide_hash
fid.student_accountability_groups

# What was the most interesting and most difficult part of this challenge?
	# The most interesting and difficult part was organizing this in my head as a class. The most interesting was that
	# getting the accountability groups was very easy. It's like the challenge says - how difficult do you want it to be?
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
	# I'm still not the best at it. I feel like I'm getting better as I learn kind of the grammar of ruby.
# Was your approach for automating this task a good solution? What could have made it even better?
	# My approach was to create a class since the potential for manipulation was greater. It worked, but took more time than
	# I hoped.
# What data structure did you decide to store the accountability groups in and why?
	# I went with a hash because I wanted to store everyone's position as student guide and teacher so that I would have more 
	# freedom to make changes and add things, like having each group have a guide in it or adding the one teacher to all groups.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	# I actually ended up going through some of my own work to find the n += 1 syntax to make the groups more readable and build
	# a better separator. I want to do more formatting and build more things, but I need to finish all the other challenges so
	# I am calling it a night. I did solidify the += and the .times operators in my head. Also, I'm satisfied with the output
	# as it's much better than the un-refactored solution which just spat out an array of arrays.