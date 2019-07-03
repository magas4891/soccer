require_relative 'team.rb'

class Game

  attr_accessor :second_team, :first_team, :second_team_goals, :first_team_goals

  def initialize(first_team, second_team, first_team_goals, second_team_goals)
    @first_team = first_team
    @second_team = second_team
    @first_team_goals = first_team_goals
    @second_team_goals = second_team_goals
  end

  def foo
    #puts @str.split(', ')[0][0..-3]
    # game_arr = @str.split(', ')
    # print game_arr
    # if game_arr[0][-1].to_i > game_arr[1][-1].to_i
    #   puts "#{game_arr[0][0..-3]} - win, #{game_arr[1][0..-3]} - lose"
    # elsif game_arr[0][-1].to_i == game_arr[1][-1].to_i
    #   puts "tie"
    # else
    #   puts "#{game_arr[1][0..-3]} win, #{game_arr[0][0..-3]} - lose"
    # end

    if @first_team_goals > @second_team_goals
      @first_team.score = 3
    elsif @second_team_goals > @first_team_goals
      @second_team.score = 3
    else
      first_team.score = 1
      second_team.score = 1
    end

  end
end
