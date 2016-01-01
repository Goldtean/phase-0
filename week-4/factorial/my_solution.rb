# Factorial

# I worked on this challenge with Tim Beck.


# Your Solution Below

def factorial(number)
  if number == 0
    1
  else
    number * factorial(number - 1)
  end
end

puts factorial(5)
