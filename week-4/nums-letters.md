#Week 4 - 4.2 Numbers, Letters, and Variable Assignment#

##Release 1##
###What does puts do?###
Puts returns nil and writes onto the screen whatever comes after it with a new line. This is different from print which returns nil and writes the output to the screen, as well as p which returns the evaluated code and does a print to the console. I believe p is the one to use.

###What is an integer? What is a float?###
An integer is a number without decimal places and a float is short for floating-point numbers, which means a number that does have a decimal. 1 is a integer, 1.0 is a float.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?###

Floats divide like normal math. For example, 9.0 / 2 = 4.5. Integer division always spits out an integer, and when it must round it always rounds down. So 9 / 2 = 4 for ruby.


##Release 2##
###How many hours are in a year?###
```ruby
p 24 * 365
```

###How many seconds are in a decade?###
```ruby
p 60 * 24 * 365 * 10
```

##Release 7##
###How does Ruby handle addition, subtraction, multiplication, and division of numbers?###
It handles them differently depending on if the numbers are integers or floats. In general, ruby can be used as a calculator.
###What is the difference between integers and floats?###
Integers are numbers without decimals and floats contain decimals.
###What is the difference between integer and float division?###
Ruby handles calculating them differently, as floats give exact answers and integers always give integer answers and round down in case of division. This makes sense, in that you cannot buy half of a $50,000 car with $25,000 (or wouldn't want to even if you could), so both floats and integers have their uses.
###What are strings? Why and when would you use them?###
Strings are a way for the ruby program you are writing to remember a group of numbers or letters. You could use strings when need to repeat a long let of letters, if you want to modify a set of numbers or letters without changing the string itself, or if you want a user's input.
###What are local variables? Why and when would you use them?###
Local variables are variables inside of the file you are working on. You use them to all the time when writing ruby programs!
###How was this challenge? Did you get a good review of some of the basics?###
It was a relatively easy but relatively long challenge. For me it was review since I was asked to read Chris Pine's book before my second interview.

