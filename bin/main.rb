#!/usr/bin/env ruby
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def _input(name = false)
  inp = gets.chomp
  return inp if name

  return inp.to_i if inp.match(/[1-9]/)

  puts 'Please enter a valid input'
  _input
end

def change_array(array, player)
  move = _input - 1
  if move.positive? && move < 10
    move_player = move
    array[move_player] = player[0]
    return array
  end
  array
end

puts 'Welcome to the Tic tac Toe field'

puts 'Player 1: Enter Your Name'
opponent_one = _input(true).capitalize
puts 'Player 2: Enter Your Name'
opponent_two = _input(true).capitalize

puts '*********************'
puts "#{opponent_one} VS #{opponent_two}"
puts '*********************'

puts '***** INSTRUCTION *****'
puts "Enter the respective number to concure the space \n
If one player write a straight line he/she/they would be a winner \n"

puts 'Here is the playing board select your move'
puts 'Choose one of the spaces on the board'

def print_score(array)
  puts '----------------------------------'
  puts "#{array[0]}|#{array[1]}|#{array[2]}"
  puts '______'
  puts "#{array[3]}|#{array[4]}|#{array[5]}"
  puts '______'
  puts "#{array[6]}|#{array[7]}|#{array[8]}"
  puts '----------------------------------'
end

puts "#{opponent_one} make your move"

print_score array

puts "Hooray! \n#{opponent_one} win the game"
