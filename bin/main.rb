#!/usr/bin/env ruby

def _input
  inp = gets.chomp
  unless inp
    puts 'Please enter a valid input'
    getInput
  end
  inp
end
def playerMove (input)
    if input.is_a?(Integer) &&  input > 0 && input < 10
        puts 'ok'
    else
        puts 'invalid character, write a number between 1 to 9' 
        move1=gets.chomp
        playerMove(move1)
    end        
end    
puts 'Welcome to the Tic tac Toe field'


puts 'Player 1: Enter Your Name'
opponent_one = _input
puts 'Player 2: Enter Your Name'
opponent_two = _input

puts '*********************'
puts "#{opponent_one.capitalize} VS #{opponent_two.capitalize}"
puts '*********************'

puts '***** INSTRUCTION *****'
puts "Enter the respective number to concure the space \n
If one player write a straight line he/she/they would be a winner"
puts 'Choose one of the spaces on the board'
puts '1|2|3'
puts '______'
puts '4|5|6'
puts '______'
puts '7|8|9'
puts "#{opponent_one} make your move"
move1=gets.chomp.to_i

playerMove(move1)



