require 'bundler'
Bundler.require
require_relative 'lib/board'
require_relative 'lib/showboard'
require_relative 'lib/player'
# require_relative 'lib/game'
require 'pry'

@current_player_symbol = 'N'  # who's turn
count_rounds    = 2
puts "Player 1, entre ton pseudo :"
print "> "
player1         = Player.new
puts "Player 2, entre ton pseudo :"
print "> "
player2         = Player.new

puts "Voici la grille :"
board = Board.new
board.display_board

while true #!end_game


  if count_rounds % 2 == 0
    print "#{player1.name},"
    player1.make_a_choice('X')
  else
    print "#{player2.name},"
    player2.make_a_choice('O')
  end
  # board.display_board
  count_rounds += 1
end