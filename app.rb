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
    @current_player_symbol = 'X'
    print "#{player1.name},"
    board = player1.make_a_choice
  else
    @current_player_symbol = 'O'
    print "#{player2.name},"
    board = player2.make_a_choice
  end
  board.display_board
  count_rounds += 1
end