def _input
  inp = gets.chomp
  unless inp
    puts 'Please enter a valid input'
    _input
  end
  inp
end

def print_board(board, player)
  puts '***** #print_board start'
  board.each do |line|
    line.each do |item|
      print item.to_s + ' '
    end
    puts ''
  end
  puts '***** #print_board end'
  next_move(board, player)
end

def next_move(board, player)
  score = Score.new(player)
  puts 'Enter Your Next Move'
  goto = gets.chomp.to_i
  # goto = rand(9)
  row = score.get_position(board, goto)
  unless row
    puts 'Please enter a number within the board'
    next_move(board, player)
  end
  if score.check_winner(board, row)
    puts 'You Win!!'
    exit(true)
  elsif score.draw
    puts 'Draw'
    exit(true)
  end
  # print_board(board, player) unless
  player.next_player
end

def bootstrap
  player = Player.new
  init_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  puts 'Welcome to the Tic tac Toe field'
  puts 'Player 1: Enter Your Name'
  player.name = _input.capitalize
  puts 'Player 2: Enter Your Name'
  player.name = _input.capitalize

  puts '*********************'
  puts "#{player.name[0]} VS #{player.name[1]}"
  puts '*********************'

  puts '***** INSTRUCTION *****'
  puts "Enter the respective number to concure the space \n
  If one player write a straight line he/she/they would be a winner \n"

  puts 'Here is the playing board select your move'
  print_board(init_board, player)
end

bootstrap
