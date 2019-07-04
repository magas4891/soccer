
class Game

  attr_accessor :first_team, :second_team, :first_team_goals, :second_team_goals, :ha

  def initialize(x)
    @first_team = x.split(', ')[0][0..-3]
    @second_team = x.split(', ')[1][0..-3]
    @first_team_goals = x.split(', ')[0][-1]
    @second_team_goals = x.split(', ')[1][-1]
    @ha = {}
  end

  def foo
    @ha[@first_team] = 0
    @ha[@second_team] = 0

    if @first_team_goals > @second_team_goals
      @ha[@first_team] += 3
    elsif @second_team_goals > @first_team_goals
      @ha[@second_team] += 3
    else
      @ha[@first_team] += 1
      @ha[@second_team] += 1
    end
    return @ha
  end
end