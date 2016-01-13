# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
p hash[:outer][:inner]["almost"][3]


# # ============================================================


# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
# p nested_data[array:]["array"][hash:]
# p nested_data[array:][1][hash:]
p nested_data[:array][1][:hash]


# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! do |element|
      element += 5
    end
  else
    element += 5
  end
end

# number_array.each {|element| number_array[element] += 5}

p number_array
# # Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! do |element|
      if element.kind_of?(Array)
         element.map! do |element|
            element += "ly"
         end
           else
    element += "ly"
    end
      end
  else
    element += "ly"
  end
end


p startup_names


# What are some general rules you can apply to nested arrays?
	# Basically, you can open any nested value using brackets [] and more brackets. Each set of brackets
	# (eg. [][][] would be three sets of brackets) goes another layer deep. It's like the movie Inception
	# a dream, within a dream, within a dream! Don't get lost! 
# What are some ways you can iterate over nested arrays?
	# We used if statements and it worked. However, going layers deep requires a nested if-statement, and 
	# I could see more layers becoming more difficult.
# Did you find any good new methods to implement or did you re-use one you were already familiar with?
# What was it and why did you decide that was a good option?
	# We found map, which is a great method and allowed us to destructively modify nested values inside of
	# an array.
	# We decided .map was a good option because it had a destructive (!) function, it's iterative since
	# it goes through each element of self, and it did exactly what we needed it to.