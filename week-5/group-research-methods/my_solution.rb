# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |el| el.is_a?(String) && el.include?(thing_to_find) } 
end

def my_hash_finding_method(source, thing_to_find)
  source.select { |k, v| v == thing_to_find }.keys 
end

# Identify and describe the Ruby method(s) you implemented.
# For the first method I used .select, .is_a? for strings, and include?. This allowed me to select each item in the array that met the parameters I included in the block, which was whether the element included the thing that we're looking to find. I pretty much used the same for the Hash method, though I needed to add .keys to the end.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#.select can be used on both hashes and arrays. It takes in a block and will return an array with each item of the original array for which the condition is true. So by selecting the element and then calling .include?(which, by including it in the block, it checks each element to see if the "thing to find" is included in the element), the method selects all the items in the array which include the thing we want to find. I've added .is_a?(String) as I wanted to check whether the element is already a string, and if so, then see if you find the letter in the string.For hashes, as mentioned above, you can still use include, but I've called .keys to the end of the select block. Without calling .keys, the method would select and return all the hashes (both the key and values) where the value is equal to the thing we want to find. By adding .keys to the end, it returns only the keys of those selected, which is what we need. 

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned how to use a block within a block. Initially I had a longer method which took up about 6 lines as I was trying to figure out how to use .select and .include and wasn't sure if I'd be able to call .include? inside the .select block. But once I was able to get the correct syntax and use both built-in methods the way I did I was able to make the code cleaner and easier to read. 
#

# Person 2

def my_array_modification_method!(source, thing_to_modify)
  source.map! do |object|
    if object.is_a? Integer
       object + thing_to_modify
    else
       object
    end
  end 
   source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
#In my first one I used ".map!" to run through each element in the array
#and then change it if it was an integer or not.
#
#In the first one I used the each method to run through the hash like I 
#did in the first one, but since it was destructive in nature, and there is no "!" 
#for a hash in this case, I made it with block that I passed in. 


# Person 3
def my_array_sorting_method(source_array)
  source_array.sort_by(&:to_s)

end

def my_hash_sorting_method(source_hash)
  source_hash.sort_by {|key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.

# Array-sort
# In the array-sorting method, I wanted to sort everything by number, followed by stings. 
# A way I could do that is to convert all elements in the array into a string and then sort. 
# Strings of numbers will sort before words in an array. .sort_by(&:to_s) accomplishes this.

# Hash-sort
# Here, I wanted to only sort the keys by value, not by key. 
# I used another .sort_by block, but designated inside of it to sort only by the values.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  thing_to_delete_string = thing_to_delete.to_s
  source.delete_if { |val| val.to_s.include?(thing_to_delete_string) }
end



def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {| key, value | key == thing_to_delete}
end



# Identify and describe the Ruby method you implemented
#  I used '.delete_if' to delete the 'thing_to_delete' argument.
#  I also used 'include?' in 'my_array_deletion_method!'. I did this because 

# Teach your accountability group how to use the methods
# 'delete_if' can be used with both hashes and arrays to delete a value, in the case of an array, or a key/value set in the case of a hash.
# for our array, the rspec made clear that if a value contained a letter, specifically 'a', it needed to be removed.
# I couldn't figure out a way to do this soley with .delete_if, so I stored 'thing_to_delete and a string in the variable 'thing_to_delete_string' (line 10)
# and then used .include? to test whether all the values contained the string.
# Also, as you can see above, you can pass .delete_if a block of code. It is very useful. 

# Share any tricks you used to find and decipher the Ruby Docs
# I used the filter search engine to sort available methods for hashes and arrays from the ruby-docs api page. I didn't realize I could do that and
# found it to be useful. No real tricks to share, though. 


# Person 5
def my_array_splitting_method(source)
  # separate by integer or string and move each into an array
  string_array = Array.new
  integer_array = Array.new
  source.each do |x|
    if x.is_a? Integer
      integer_array << x
    else
      string_array << x
    end
  end
# create new array with each array as the two array values
p  [integer_array, string_array]
end

my_array_splitting_method(i_want_pets)

def my_hash_splitting_method(source, age)
  string_array = Array.new
  integer_array = Array.new
  source.each do |k, v|
    if v <= age
      integer_array << k
      integer_array << v
    else
      string_array << k
      string_array << v
    end
  end
  i = integer_array.each_slice(2).to_a
  s = string_array.each_slice(2).to_a
p [i, s]  
end

my_hash_splitting_method(my_family_pets_ages, 4)

# Identify and describe the Ruby method(s) you implemented.
  # I impemented .each, <<, .each_slice, to_a, and some if statements.
  # Basically, my plan was to separate by integer / string, then fill two arrays and make
  # an array of arrays. It worked pretty well.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
  # I think the most important method is probably the each_slice method, which split each array into two
  # arrays. It's relatively easy to use, but you must put in a .to_a, otherwise it returns an enumberable.
  #


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned that researching is much easier when you have a gameplan for how you want to execute your code.
# For example, I found the .each_slice after I had the code working well it just was giving me two
# arrays instead of two arrays of arrays. Because I knew exactly what I wanted to do, it was easy researching
# how to do it.