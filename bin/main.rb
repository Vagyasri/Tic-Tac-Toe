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
end

user_presentation

cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
user_interface(cells)
