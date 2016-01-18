# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 6 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # I'm going to use an array for bingo because then I can use a random number generator to get me a letter.
  # I'm using an array because it seems like the easiest since I can call a random letter using rand 0..4
  # next I will get a random number from 1-100 and use some string math to combine them.

# Check the called column for the number called.
  # First I need to figure out a way to look at the corresponding column, after that comparing will be easy.
  # I can do that with something like include, and then I can use an if statement to say Bingo! or Not Bingo!
  # if the number is included in that column or not.

# If the number is in the column, replace with an 'x'
  # Complete an if statement where if the number in the column is equal to the random number, the number in the
  # column will become equal to "X"

# Display a column to the console
  # I will print the column to the console each time there's a bingo by setting the something like @column to
  # a map of the column.

# Display the board to the console (prettily)
  # I want to put it on the board using a new line for each array that way it actually looks like a box. This part
  # should be relatively easy, I think there's a "/n" or something I can use for a new line.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def play
#     letter = ["B", "I", "N", "G", "O"]
#     @rando_letter = rand(0..4)
#     @letterpick = letter[@rando_letter]
#     @number =  rand(1..100)
#     puts @letterpick + @number.to_s
#   end

#   def check
#     @column = @bingo_board.map {|row| row[@rando_letter]}
#     if @column.include?(@number)
#       puts @column
#       puts "Bingo!"
#     else
#       puts "No bingo! Play again?"
#     end
#   end

#   def replace
#    if @column.include?(@number)
#     if @bingo_board[0][@rando_letter] == @number
#       puts "The first line has the number"
#       @bingo_board[0][@rando_letter] = "X"
#     elsif @bingo_board[1][@rando_letter] == @number
#       puts "The second line has the number"   
#       @bingo_board[1][@rando_letter] = "X"
#     elsif @bingo_board[2][@rando_letter] == @number
#       puts "The third line has the number"
#       @bingo_board[2][@rando_letter] = "X"
#     elsif @bingo_board[3][@rando_letter] == @number
#       puts "The fourth line has the number"
#       @bingo_board[3][@rando_letter] = "X"
#     elsif @bingo_board[4][@rando_letter] == @number
#       puts "The fifth line has the number"
#       @bingo_board[4][@rando_letter] = "X"
#     end
#         print @bingo_board[0].to_s + "\n"
#         print @bingo_board[1].to_s + "\n"
#         print @bingo_board[2].to_s + "\n"
#         print @bingo_board[3].to_s + "\n"
#         print @bingo_board[4].to_s + "\n"
#    end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def play
    letter = ["B", "I", "N", "G", "O"]
    @rando_letter = rand(0..4)
    @letterpick = letter[@rando_letter]
    @number =  rand(1..100)
    puts @letterpick + @number.to_s
  end

  def check
    @column = @bingo_board.map {|row| row[@rando_letter]}
    if @column.include?(@number)
      puts @column
      puts "Bingo!"
    else
      puts "No bingo! Play again?"
    end
  end

  def replace
    if @column.include?(@number)
      @bingo_board.each {|row| row[@rando_letter]
      if row[@rando_letter] == @number
        row[@rando_letter] = "X"
      end}
        print @bingo_board[0].to_s + "\n"
        print @bingo_board[1].to_s + "\n"
        print @bingo_board[2].to_s + "\n"
        print @bingo_board[3].to_s + "\n"
        print @bingo_board[4].to_s + "\n"
   end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71,  8, 88],
         [22, 69, 75, 65, 73],
         [83, 85, 97, 89, 57],
         [25, 31, 96, 68, 51],
         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
100.times do new_game.play
new_game.check
new_game.replace

end
#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  # This challenge was not so hard to pseudocode, but it was very difficult to test since most of the time the result was no bingo.
# What are the benefits of using a class for this challenge?
  # The benefits are that you can call new instances of bingo and in a way actually play the game. It also allows for splitting everything up
  # into smaller parts.
# How can you access coordinates in a nested array?
  # You have to use double brackets.
# What methods did you use to access and modify the array?
  # I just used if statements and setting the variable equal to an "X". I wanted to get more creative but I couldn't figure out any other way.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, 
# and how is it called?
  # I thought replace would work, but replace replaces everything inside an array. I learned it hoping it would be useful but it was not.
# How did you determine what should be an instance variable versus a local variable?
  # I basically made as few instance variables as possible - I used them where they were needed and did not where they weren't.
# What do you feel is most improved in your refactored solution?
  # My refactor was a bit ironic in that I actually found a better solution to the problem without realizing it, then I deleted it and did it a
  # longer way. I then did undo a lot and found a better way. Basically, the replace part of the equation was the hardest part and that's the
  # part I refactored from 17 lines to 5.
