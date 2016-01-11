# Pad an Array

# I worked on this challenge with Joe Case.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? : an array, a length and a value
# What is the output? (i.e. What should the code return?)
# Out is the modified array
# # What are the steps needed to solve the problem?
# evaluate array for length
# Then add cells if empty at index with value if less than length.

array_test = [1,2,3]

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  array if (array.length <= min_size) || (min_size == 0)
  # return array if min_size == 0
  counter = array.length
  while counter < min_size
  array << value
  counter += 1
  end
  array
end

print pad!(array_test, 5, 9)
print array_test


array_test2 = [1,2,3,4,5]

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  counter = 0
  while counter < min_size
  if array[counter] != nil
  new_array << array[counter]
  else
  new_array << value
  end
  counter += 1
  end
  new_array = array.clone if min_size == 0
  new_array
end

print pad(array_test2, 0, 6)
print array_test2


# 3. Refactored Solution

array_test = [1,2,3]

def pad!(array, min_size, value = nil) #destructive
  array if (array.length <= min_size) || (min_size == 0)
  # return array if min_size == 0
  counter = array.length
  while counter < min_size
  array << value
  counter += 1
  end
  array
end

print pad!(array_test, 5, 9)
print array_test


array_test2 = [1,2,3]


def pad(array, min_size, value = nil) #non-destructive
  array1 = array.clone
  array1 if (array1.length <= min_size) || (min_size == 0)
  counter = array1.length
  while counter < min_size
  array1 << value
  counter += 1
  end
  array1
end

print pad(array_test2, 10, 6)
print array_test2

# 4. Reflection
# Were you successful in breaking the problem down into small steps?
  # Yes, we broke it down fairly easily.
# Once you had written your pseudocode, were you able to easily translate it into code?
# What difficulties and successes did you have?
  # We were able to successfully get the pseudocode into code, we did have some difficulties
  # with getting it to work, but we got it working the way it was supposed to and it was rewarding
  # having the solution work the way we wanted to.
# Was your initial solution successful at passing the tests? If so, why do you think that is?
  # We got it working but the rspec test wasn't working because we had "puts" on the last line and also because
  # for the pad array it needed to return a different object id if it was returning the original array.
# If not, what were the errors you encountered and what did you do to resolve them?
  # We had kind of the normal rounds of issues - bad syntax, forgot an "end", etc. etc., but in general
  # our approach was solid so we got through all the difficulties.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
  # We called it and decided to reconvene when we couldn't figure out the object id issue. Once I figured it out
  # with .clone, I figured why not just copy and paste the solution and use clone with everything unchanged?
  # It's shorter, simpler, and more closely resembles pad!.
# How readable is your solution? Did you and your pair choose descriptive variable names?
  # I think it's pretty readable and the variable names are pretty descriptive while being short and easy to type.
# What is the difference between destructive and non-destructive methods in your own words?
  # The difference between destructive and non-destructive methods are that destructive methods make changes to
  # their original input while the non-destructive methods do not. A very easy work-around to make something
  # non-destructive I learned in this challenge is .clone.