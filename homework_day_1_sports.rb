
# Now we would like you to make a class that represents a sports team.

# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).

# For each property in the class make a getter method than can return them.

# Create a setter method to allow the coach's name to be updated.

# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.

# Create a method that adds a new player to the players array.

# Add a method that takes in a string of a player's name and checks to see if they are in the players array.

# Add a points property into your class that starts at 0.

# Create a method that takes in whether the team has won or lost and updates the points property for a win.


class Team

  attr_accessor :team_name, :players, :coach

  def initialize (team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def team_name_get
    return @team_name
  end

  def players_get
    return @players
  end

  def coach_get
    return @coach
  end

  def change_coach_name(new_coach)
    @coach = new_coach
  end

  def add_player (player)
    @players << player
  end

  def find_a_player (players)
    if @players.include? (players)
      return true
    else
      return false
    end
  end

  def the_score(score)
    if (score == "Win")
      @points += 1
    end
  end



end
