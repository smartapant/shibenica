
puts "Let's play shibenica!"
dictionary=Dictionaty.new
player=Player.new("Player 1")
shibenica=Shibenica.new('word')
game=Game.new(player,shibenica)

until game.over?
  puts "#{shibenica.show}\n"
  puts "print a letter"
  game.turn(gets.chomp)
end

puts "#{game.result}"