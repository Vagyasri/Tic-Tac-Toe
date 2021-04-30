#!/usr/bin/env ruby

def user_presentation
  puts ''
  puts 'WELCOME TO TIC-TAC-TOE'
  puts ''
  puts 'Name of the Player 1'
  player_one = gets.chomp
  puts ''
  puts 'Name of the Player 2'
  player_two = gets.chomp
  puts ''
  sleep 1
  puts "#{player_one} will play with X and #{player_two} will play with O"
  puts ''
  puts "🔥 Let's G0! 🔥"
  puts ''
  [player_one, player_two]
end

def user_interface(array)
  puts ' +---+---+---+'
  puts " | #{array[0]} | #{array[1]} | #{array[2]} |"
  puts ' +---+---+---+'
  puts " | #{array[3]} | #{array[4]} | #{array[5]} |"
  puts ' +---+---+---+'
  puts " | #{array[6]} | #{array[7]} | #{array[8]} |"
  puts ' +---+---+---+'
  puts ''
end


cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
players = user_presentation
(0..8).each do |i|
  user_interface(cells)
  if i.even?
    puts "It's #{players[0]}'s turn!"
  else
    puts "It's #{players[1]}'s turn!"
  end
  begin
    puts ''
    puts 'Please select an available space from the board'
    num = gets.chomp.to_i

    raise StandardError, num if num.nil? || !(num >= 1 && num < 10) || !cells[num-1].is_a?(Integer)
  rescue StandardError
    puts ''
    puts 'Ivalid input: Please select a number from 1-9'
    puts ''
    retry
  end
  cells[num - 1]="x"
end
result = 0
if result.positive?
  puts ''
  puts 'Lucky is the winner'
  puts ''
elsif result.negative?
  puts 'Peter is the winner'
else
  puts "It's a tie"
end
