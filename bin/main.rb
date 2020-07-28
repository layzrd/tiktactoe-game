#!/usr/bin/env ruby

def _input
  inp = gets.chomp
  unless inp
    puts 'Please enter a valid input'
    getInput
  end
  inp
end

def print_board(board)
  puts '***** #print_board start'
  board.each do |line|
    line.each do |item|
      print item.to_s + ' '
    end
    puts ''
  end
  puts '***** #print_board end'
end

puts 'Welcome to the Tic tac Toe field'

puts 'Player 1: Enter Your Name'
opponent_one = _input.capitalize
puts 'Player 2: Enter Your Name'
opponent_two = _input.capitalize

puts '*********************'
puts "#{opponent_one} VS #{opponent_two}"
puts '*********************'

puts '***** INSTRUCTION *****'
puts "Enter the respective number to concure the space \n
If one player write a straight line he/she/they would be a winner \n"

puts 'Here is the playing board select your move'
puts print_board

puts 'Enter Your Next Move'

puts "Hooray! \n #{winner.name} win the game \n
If one player write a straight line he/she/they would be a winner"

puts 'Here is the playing board select your move'
puts 'Choose one of the spaces on the board'

puts '1|2|3'
puts '______'
puts '4|5|6'
puts '______'
puts '7|8|9'
puts "#{opponent_one} make your move"

puts print_board

puts "Hooray! \n #{opponent_one} win the game"
