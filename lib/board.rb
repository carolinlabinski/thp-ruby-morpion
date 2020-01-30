require 'pry'

class Board
  attr_accessor :array1, :array2, :array3

  @array1 = Array.new
  @array2 = Array.new
  @array3 = Array.new
  def initialize
    # puts "|#{a[0]}|#{a[1]}|#{a[2]}|"
    @array1 = ["_", "_", "_"]
    @array2 = ["_", "_", "_"]
    @array3 = ["_", "_", "_"]
  end

  def display_board
    puts "  A B C"
    puts "1|#{@array1[0]}|#{@array1[1]}|#{@array1[2]}|"
    puts "2|#{@array2[0]}|#{@array2[1]}|#{@array2[2]}|"
    puts "3|#{@array3[0]}|#{@array3[1]}|#{@array3[2]}|"
    puts
  end

  def self.modify_cell(cell)
    case cell
    when 'A1'
      @array1[0] = @current_player_symbol
    when 'A2'
      @array1[1] = @current_player_symbol
    when 'A3'
      @array1[2] = @current_player_symbol
    when 'B1'
      @array2[0] = @current_player_symbol
    when 'B2'
      @array2[1] = @current_player_symbol
    when 'B3'
      @array2[2] = @current_player_symbol
    when 'C1'
      @array3[0] = @current_player_symbol
    when 'C2'
      @array3[1] = @current_player_symbol
    when 'C3'
      @array3[2] = @current_player_symbol
    end
    # display_board
  end
end

# binding.pry