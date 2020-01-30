class Game

  def check_cols
    array1.each do |i|
      if array1[i] == array2[i] && array1[i] == array3[i]
        puts "end_game"
      end
    end

      # calls end_game if row == XXX or OOO
  end

  def check_rows
    array1.each do |i|
      if array1[0] == array1[1] && array1[0] == array1[2] && 
        puts "end_game"
      end
    end
    # calls end_game if cols == XXX or OOO
  end

  def check_diags
    # calls end_game if diags == XXX or OOO
  end

  # Check cols
  if array1[0] == array2[0] && array1[0] == array3[0]
    end_game
  end
  

# def truc
  # 3.times do |i|
    # if colonne i = 0 1 2 
    # end
    # if ligne  i = 0 1 2 
    # end
  # end
# 



  def end_game
    return false
    # Says end of game
  end
end

# binding.pry