def display_board(board)
  
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "   
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i 
  index = user_input - 1 
end

def valid_move?(board, index)
  if (index.between?(0, 8) && position_taken?(board, index)) == true
    return true
  else
    return false
  end
end

def position_taken?(board, index) 
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return true
    elsif board[index] == "X" || board[index] == "O"
      return false
  end
end

def move(board, index, symbol = "X")
  board[index] = symbol
end

def turn(board)
  loop do
    puts"Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
     if valid_move?(board, index) == true
      return move(board, index, symbol = "X") && display_board(board)
     else
      return turn(board)
     end
   end
  end







  