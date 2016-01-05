items = 'Apples'


def grocery_list(items)
  list = Hash.new(1)
  array_of_items = items.split
  array_of_items.each do |item|
  list[item] = 1
  end
  return list
end

list = grocery_list(items)

p "After being created the grocery list looks like this: "
p list

def add_item(item, quantity, hash)
  list = Hash.new
  list[item] = quantity
  hash.merge!(list)
  return hash
end

add_item('Lemonade', 2, list)
add_item('Tomatoes', 3, list)
add_item('Onions', 1, list)
add_item('Ice Cream', 4, list)

p "After adding items the grocery list looks like this: "
p list

def remove_item(item, hash)
 hash.delete(item)
 return hash
end

remove_item('Lemonade', list)

p "After remove item the grocery list looks like this: "
p list

def quantity_item(item, quantity, hash)
  list = Hash.new
  list[item] = quantity
  hash.merge!(list)
  return hash
end

quantity_item('Ice Cream', 1, list)

p "After changing quantity the grocery list looks like this: "
p list 

def print_list(hash)
  puts "Grocery List"
  hash.each {|key, value| puts "The number of #{key} to grocerize is #{value}"}
  puts "I hope you have a fantastic grocery experience!"
end

print_list(list)


#What did you learn about pseudocode from working on this challenge?
#  I learned it's important, and that code is as complicated sometimes as you make it.
#  Complicated code works, it just takes longer to figure out.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#  Hashes are what you need because you can have the same amount of each item,
#  but you shouldn't have two of the same item, so a hash makes sense over an array.

#What does a method return?
#  A method returns the last line of code or otherwise what you tell it to.
#  I personally specifying a return for each method and then printing it using print
#  or puts or p afterwards.

#What kind of things can you pass into methods as arguments?
#  Any ruby object, including hashes or other arguments.

#How can you pass information between methods?
#  You can set up an empty hash and then have methods modify it. You can otherwise pass methods,
#  or other variables as arguments. There are probably other ways but thats what we used here.

#What concepts were solidified in this challenge, and what concepts are still confusing?
#  Having methods modify and even create a hash were solidified. Having a method iterate over items
#  was also solifidied.