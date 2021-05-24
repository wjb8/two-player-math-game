require "./Game"
require "./Player"
require "./Question"

p1 = Player.new("P1")
p2 = Player.new("P2")

puts "-----TwO-O-Player Math Game-----"

puts p1.name_prompt
puts p2.name_prompt

puts "Let's begin."
puts "#{p1.name} vs #{p2.name}\n"
puts "--------------\n\n"

game = Game.new(p1, p2)
game.start
