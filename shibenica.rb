require './lib/game.rb'
require './lib/shibenica.rb'
require './lib/dictionary.rb'

puts "Let's play shibenica!"
puts"print ur word or print 'dictionary' for random animal"
word=gets.chomp
dictionary=Dictionary.new
word=dictionary.get if word == 'dictionary'
shibenica=Shibenica.new(word)
game=Game.new(shibenica)

until game.over?
  puts "#{shibenica.show}\n"
  puts "print a letter"
  game.turn(gets.chomp)
  puts shibenica.field

end

puts "#{shibenica.show}\n"
puts "#{game.result}"