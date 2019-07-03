require_relative 'game.rb'

class Team
  attr_accessor :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def foo1
    puts @name
    puts @score
  end

  def score(score)
    @score += score
  end
end