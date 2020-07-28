#!/usr/bin/env ruby

def _input

  inp = gets.chomp
  if inp.match(/[1-9]/)
    return inp.to_i
  else 
    puts 'Please enter a valid input'
    
  end
  inp
end

def change_array (array,player)
  move = _input-1
  if move > 0 && move < 10

    move_player=move
    array[move_player]=player[0]
    return print_score(array)
  end
end

=begin
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
=end

 

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


puts 'Enter Your Next Move'
puts "Hooray! \n {winner.name} win the game \n
If one player write a straight line he/she/they would be a winner"

puts 'Here is the playing board select your move'
puts 'Choose one of the spaces on the board'

array=[1,2,3,4,5,6,7,8,9]
def print_score (array)
  puts '----------------------------------'
  puts "#{array[0]}|#{array[1]}|#{array[2]}"
  puts '______'
  puts "#{array[3]}|#{array[4]}|#{array[5]}"
  puts '______'
  puts "#{array[6]}|#{array[7]}|#{array[8]}"
  puts '----------------------------------'
end  

#print_score(array)

puts "#{opponent_one} make your move"


print_score (array)
p change_array(array,opponent_one)


#puts print_board 

puts "Hooray! \n #{opponent_one} win the game"
