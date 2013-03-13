require './lib/game.rb'
require './lib/shibenica.rb'

puts "Let's play shibenica!"
#dictionary=Dictionaty.new
#player=Player.new("Player 1")
shibenica=Shibenica.new('cat')
game=Game.new(shibenica)

until game.over?
  puts "#{shibenica.show}\n"
  puts "print a letter"
  game.turn(gets.chomp)
  puts shibenica.field

end

puts "#{shibenica.show}\n"
puts "#{game.result}"