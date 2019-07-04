# frozen_string_literal: true

require_relative 'game.rb'

puts 'Введите название файла'
filename = gets.chomp.to_s

f = IO.readlines(filename, chomp: true)

team = {}
arr = []
count = 1

f.each do |x|
  arr.append(Game.new(x).foo)
  team[x.split(', ')[0][0..-3]] = 0
  team[x.split(', ')[1][0..-3]] = 0
end

arr.each { |x| x.each { |key, value| team[key] += value } }

output = team.sort_by { |k, v| [-v, k] }

output.each do |x|
  puts "#{count}. #{x[0]} - #{x[1]} pts."
  count += 1
end