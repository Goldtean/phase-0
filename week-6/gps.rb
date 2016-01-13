# Your Names
# 1) Chris Bunkers
# 2) Jeremy Oltean

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.key?(item_to_make) 
    raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end
  #check to make sure item_to_make is in the library hash
  #IF not, return error message
  
  serving_size = library[item_to_make] 
  #define the serving size as the value in the key/value pairs in 'Library' 
  remaining_ingredients = num_of_ingredients % serving_size #remaining ingredients, equal to num argument and serving size hash value  
  output = "Calculations complete: Make #{num_of_ingredients / serving_size} #{item_to_make} " 
  
  return output + if remaining_ingredients > 0
  "you have #{remaining_ingredients} leftover ingredients. Suggested baking items: " +
          if remaining_ingredients >= 5
          "cake"
          else 
          "#{remaining_ingredients} cookie(s)"
          end
  else
  output.chomp(" ") + "."
      end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
  # I learned that it's important - it took us a good 10-15 minutes to figure it out, where if it had
  # been written better it could have taken much less time.
# Did you learn any new methods? What did you learn about them?
  # I learned .key? and I also solidified my understanding of a few other methods. Particularly,
  # unless and if statements.
# What did you learn about accessing data in hashes?
  # I kind of wish I had done the nested data structures challenge first because it would have helped.
  # Using .key is a interesting way to check the key, though.
# What concepts were solidified when working through this challenge?
  # I think string math was solidified, as well as problem solving, and refactoring. This was a pretty
  # interesting challenge as well because it was reading existing code, which was also solidified.
  # Basically, looking at code and figuring out what it's supposed to do (vs. what it does in this case.)
