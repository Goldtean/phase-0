# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Carl Conroy
# I spent 3 hours on this challenge.

# Pseudocode

# Input: a 16 digit integer
# Output: true or false if this is a valid card number
# Steps:

# if credit card number > 16 it's not a valid number
# if credit card number is < less than 16 it's not valid
#  ^ unless credit card number is == 16 raise argument error

# Starting with the 2nd to last digit. Double every other digit until you reach the first one

# Sum all the untouched digits and the doubled digits. The double digits need to be broken apart
#  11 => 1 + 1 etc.

# If(unless) it's a multiple of 10 you have recieved a valid card


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(card_number)
#     @card_number = card_number
#     unless @card_number.to_s.length == 16
#       raise ArgumentError.new("You must enter a credit card number with 16 digits")
#     end
#     end

#   def check_card
#     card_array =  @card_number.to_s.split(//).reverse
    
#     x = 1
#     8.times do card_array[x]
#       card_array[x] = (card_array[x].to_i * 2).to_s
#       x += 2
#     end
    
#     card_array.each do |num|
#       if num.length == 2
#         num = num.split(//)
#         card_array.concat(num)
#       end  
#     end

#     card_array.delete_if {|x| x.length >=  2}
#     sum = 0
#     card_array.each {|x| sum += x.to_i }
    
#     if sum % 10 == 0
#       puts "You have entered a valid number"
#        return true
#       else puts "Please enter a valid number!"
#        return false
#     end
#     print sum
#   end
 
# end

# credit_card = CreditCard.new(4408041234567901)
# puts credit_card
# puts credit_card.check_card



# Refactored Solution

class CreditCard
  
  def initialize(card_number)
    @card_number = card_number
    unless @card_number.to_s.length == 16
      raise ArgumentError.new("You must enter a credit card number with 16 digits")
    end
    end

  def check_card
    card_array =  @card_number.to_s.split(//).reverse
    
    x = 1
    8.times do card_array[x]
      card_array[x] = ((card_array[x].to_i * 2).to_s).split(//)
      x += 2
    end

	flat_array = card_array.flatten

    sum = 0
    flat_array.each {|x| sum += x.to_i }
    
    if sum % 10 == 0
      puts "You have entered a valid number"
       return true
      else puts "Please enter a valid number!"
       return false
    end
  end
 
end

credit_card = CreditCard.new(4408041234567901)
puts credit_card.check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?
  # The most difficult part was multiplying the numbers by 2, I would say. First we had to turn them into an array
  # to be able to more easily multiply the right ones, then we had to keep the numbers as strings to easily separate
  # them later. 
# What new methods did you find to help you when you refactored?
  # I didn't learn any new methods, but I did solidify my code reading and analyzing abilities. I noticed that we
  # iterated over the array twice to do what we wanted, first to split the numbers and merge them into the array,
  # then we deleted all the numbers with a length of two. I figured out a way to do both by splitting within the 
  # 8.times do and then flattening the card array afterwards.
# What concepts or learnings were you able to solidify in this challenge?
  # Once again, my knowledge of using a counter came in handy and was solidified. We implemented a similar Solution
  # as what I had in my commas challenge, where I had commas inserted every 3 numbers and used a counter. This times
  # we used 8.times do to multiply every second number by adding a counter to x.
  # If statements were also solidified, as well as summing the values of an array and splitting numbers into an array.
  # Problem solving and team work were also solidified. Everything we did we already knew how to do, but figuring out
  # what to do and where to do it was the challenge.
