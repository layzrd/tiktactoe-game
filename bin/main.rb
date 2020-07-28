#!/usr/bin/env ruby

def _input
  inp = gets.chomp
  unless inp
    puts 'Please enter a valid input'
    getInput
  end
  inp
end

print 'Welcome to the Tic tac Toe field'

puts 'Player 1: Enter Your Name'
opponent_one = _input
puts 'Player 2: Enter Your Name'
opponent_two = _input

puts "#{opponent_one} VS #{opponent_two}"

puts '***** INSTRUCTION *****'
puts "Enter the respective number to concure the space \n
If one player write a straight line he/she/they would be a winner"
