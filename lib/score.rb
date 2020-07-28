class Score
  def in_array(item, find)
    item.each_with_index do |val, i|
      return i if val.eql? find
    end
    false
  end

  # def initialize(player)
  #   @player = player
  # end

  def get_position(board, current_position)
    board.each_with_index do |item, index|
      item_index = in_array(item, current_position)
      return [index, item_index] if item_index
    end
    false
  end

  def check_diagonal(board)
    if ((board[2][2].eql? board[1][1]) && (board[0][0].eql? board[1][1])) ||
       ((board[2][0].eql? board[1][1]) && (board[0][2].eql? board[1][1]))
      return true
    end

    false
  end

  def check_winner(board, current_position)
    current_row = get_position(board, current_position)
    board[current_row[0]][current_row[1]] = '*' #player.current_play_icon # * or #
    if (board[current_row[0]][0].eql? board[current_row[0]][1]) &&
       (board[current_row[0]][2].eql? board[current_row[0]][1]) ||
       (board[0][current_row[1]].eql? board[1][current_row[1]]) &&
       (board[1][current_row[1]].eql? board[2][current_row[1]]) ||
       check_diagonal(board)
      return true
    end

    false
  end
end
