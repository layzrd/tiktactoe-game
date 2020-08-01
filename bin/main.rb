#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/score'

def _input
  inp = gets.chomp
  unless inp
    puts 'Please enter a valid input'
    _input
  end
  inp
end

def print_board(board, player, die = false)
  puts '*********=Board=*********'
  board.each do |line|
    line.each do |item|
      print item.to_s + ' '
    end
    puts ''
  end
  puts '*********/=Board=/*********'
  next_move(board, player) unless die
end

def next_move(board, player)
  score = Score.new(player) # manage player scores
  puts "#{player.current_player}#{player.icon} Enter Your Move"
  goto = gets.chomp.to_i
  row = score.get_position(board, goto)
  unless row
    puts 'Please enter a number within the board'
    next_move(board, player)
  end
  if score.check_winner(board, row)
    print_board(board, player, true)
    puts "#{player.current_player} Win!!"
    exit(true)
  elsif score.draw(board)
    print_board(board, player, true)
    puts '*********=DRAW=*********'
    exit(true)
  end
  player.next_player
  print_board(board, player)
end

def bootstrap
  player = Player.new # manage all players
  init_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  puts 'Welcome to the Tic tac Toe field'
  puts 'Player 1: Enter Your Name'
  player.players.push(_input.capitalize)
  puts 'Player 2: Enter Your Name'
  player.players.push(_input.capitalize)

  puts '*********************'
  puts "#{player.players[0]} VS #{player.players[1]}"
  puts '*********************'

  puts '***** INSTRUCTION *****'
  puts "Enter the respective number to concure the space \n
  If one player write a straight line he/she/they would be a winner \n"

  puts 'Here is the playing board select your move'
  print_board(init_board, player)
end

bootstrap
