require_relative 'game.rb'
require_relative 'team.rb'


f = IO.readlines('sample.txt', chomp: true)

#print f

team = []

f.each do |x|
  game = Game.new(x.split(', ')[0][0..-3], x.split(', ')[1][0..-3], x.split(', ')[0][-1], x.split(', ')[1][-1]).foo
  # puts x.split(', ')[0][0..-3]
  # puts x.split(', ')[1][0..-3]
  #team = Team.new(puts x.split(', ')[0][0..-3]).foo1
  team.append(x.split(', ')[0][0..-3])
  team.append(x.split(', ')[1][0..-3])

end

team.uniq!

team.each {|x| Team.new(x)}



