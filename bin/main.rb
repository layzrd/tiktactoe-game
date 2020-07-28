#!/usr/bin/env ruby

def _input
  inp = gets.chomp
  unless inp
    puts 'Please enter a valid input'
    getInput
  end
  inp
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

puts "Hooray! \n #{winner.name} win the game"
