#Exercise B

class Team

  attr_reader :name, :players
  attr_accessor :coach, :points

  def initialize(name,players,coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0

  end

=begin
  def name
    return @name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def set_coach(coach_name)
    return @coach = coach_name
  end
=end

  def add_player(new_player)
    @players << new_player
  end

  def check_player_in_team?(player)
    @players.include?(player)
  end

  def update_points(result)
    if result == "win"
      @points += 1
    
    end

  end

end
