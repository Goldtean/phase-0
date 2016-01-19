# Virus Predictor

# I worked on this challenge with: Ian Kinner, Ieronim Oltean, John Dees
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#

# imports the constant STATE_DATA from external file "state_data.rb
# differs from 'require' because an absolute path to the file is not necessary. Also, the .rb is omitted from the filename.

require_relative 'state_data'

class VirusPredictor

  # initialze the class with state_of_origin, population_density, population  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and speed_of_spread methods
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  # flow control to calculate number_of_deaths as a function of population_density, and print
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    # if @population_density >= 50 
    #   number_of_deaths = (@population / 500).floor
    #  else
    #   number_of_deaths = (@population * 0.05).floor
    # end
      
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

  end

  # flow control to calculate speed as a function of population_density, and print
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    

  end

end


# REFACTOR


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# for each key in our hash create a new instance of virus predictor
# call virus_effects method on that instance

STATE_DATA.each do |state,data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The difference is that one uses symbols and the other does not. Symbols are appropriate in this scenario because our program does
  # not need to remember 50 instances of "population", which would be the case if we used strings as keys.
# What does require_relative do? How is it different from require?
  # require_relative basically allows our program to access information from two different files. It differs from require because require
  # requires the full path name including the file extension, whereas require_relative does not.
# What are some ways to iterate through a hash?
  # we went with an each which is maybe the most reliable method I've found to iterate in general and it worked pretty well. You could also do 
  # something like a map or delete or fetch or include for example, depending on what you're doing.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # Just that the counter didn't really make any sense. It worked but it was needlessly complicated.
# What concept did you most solidify in this challenge?
  # I think when we called STATE_DATA.each we first wanted to just do |state| but then did |state, data| and that was solidified for me - why
  # you would want to do one over the other. Other than that, looking at code and figuring out what it does was also solidified a bit.
