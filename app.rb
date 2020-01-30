require 'bundler'
Bundler.require
require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/game'
require 'pry'

@who_is_playing = "str"
count_rounds = 2
array = ["_", "_", "_", "_", "_", "_", "_", "_", "_"]

puts "Player 1, entre ton pseudo :"
print "> "
player1         = Player.new
puts "Player 2, entre ton pseudo :"
print "> "
player2         = Player.new

puts "Voici la grille :"
board = Board.new
board.display_board(array)

while !Game.new.end_game(array)
  if count_rounds % 2 == 0
    @who_is_playing = player1.name
    print "#{player1.name},"
    player1.make_a_choice('X', array)
  else
    @who_is_playing = player2.name
    print "#{player2.name},"
    player2.make_a_choice('O', array)
  end
  count_rounds += 1
end