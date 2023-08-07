require './player'
require './question'
require './game'


# get player names from user
puts "Enter Player 1's name:"
player1_name = gets.chomp

puts "Enter Player 2's name:"
player2_name = gets.chomp

# intialize the game

game = Game.new(player1_name, player2_name)

game.start