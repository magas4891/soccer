require_relative 'game.rb'

f = IO.readlines('sample.txt', chomp: true)

team = {}

arr = []

f.each do |x|
  arr.append(Game.new(x).foo)
  team[x.split(', ')[0][0..-3]] = 0
  team[x.split(', ')[1][0..-3]] = 0
end

arr.each {|x| x.each { |key, value| team[key] += value } }

output = team.sort_by{|k, v| v}.reverse

output.each do |x|
  puts "#{x[0]}, #{x[1]} pts."
end


