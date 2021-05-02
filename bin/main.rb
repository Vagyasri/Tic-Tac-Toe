#!/usr/bin/env ruby
# rubocop: disable Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity

WIN1 = [1,2,3]
WIN2 = [4,5,6]
WIN3 = [7,8,9]
WIN4 = [1,4,7]
WIN5 = [2,5,8]
WIN6 = [3,6,9]
WIN7 = [1,5,9]
WIN8 = [3,5,7]

class Logic
    attr_reader :player
    def initialize(player)
        @player = player
    end
    def winner?
      (WIN1 - player.spt).empty? || (WIN2 - player.spt).empty? || (WIN3 - player.spt).empty? || (WIN4 - player.spt).empty? || (WIN5 - player.spt).empty? || (WIN6 - player.spt).empty? || (WIN7 - player.spt).empty? || (WIN8 - player.spt).empty? 
    end
end

class Player
  attr_reader :name, :marker, :spt
  def initialize(input)
    @name = input.fetch(:name)
    @marker = input.fetch(:marker)
    @spt = input.fetch(:spt)
  end
end

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

def check_winner
  cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  players = user_presentation
  player_x = Player.new({name: players[0], marker: "X", spt: []})
  player_o = Player.new({name: players[1], marker: "O", spt: []})
  (0..8).each do |i|
    
    user_interface(cells)
    if i.even?
      puts "It's #{players[0]}'s turn!"
      begin
        puts 'Please select an available space on the board'
        num = gets.chomp.to_i
  
        raise StandardError, num if num.nil? || !(num >= 1 && num < 10) || !cells[num - 1].is_a?(Integer)
      rescue StandardError
        puts '🛑 Invalid input: Please select a number from 1-9'
        puts ''
        retry
      end
      cells[num - 1] = player_x.marker
      user_interface(cells)
      player_x.spt.push(num)
      logic = Logic.new(player_x)
      
      if logic.winner?
        puts ""
        return " 🏆 #{player_x.name} IS THE WINNER 🏆 "
        puts ""
        
      end
    else
      puts "It's #{players[1]}'s turn!"
    
      begin
        puts 'Please select an available space on the board'
        num = gets.chomp.to_i

        raise StandardError, num if num.nil? || !(num >= 1 && num < 10) || !cells[num - 1].is_a?(Integer)
      rescue StandardError
        puts '🛑 Invalid input: Please select a number from 1-9'
        puts ''
        retry
      end
      cells[num - 1] = player_o.marker
      user_interface(cells)
      player_o.spt.push(num)
      logic = Logic.new(player_o)
       if logic.winner?
        puts ""
        return " 🏆 #{player_o.name} IS THE WINNER 🏆 "
       
      end
    end
  end
  return "👏 It's a tie 👏"
end
  

def repeater
  sleep 1
  puts ""
  puts 'Want to repeat? (Y/N)'
  decission = gets.chomp.upcase
  if decission == 'Y'
    puts check_winner
    repeater
  else
    puts ''
    puts '⛳️ Game Over ⛳️'
    puts ''
  end
end

puts check_winner
repeater

# # rubocop: enable Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity
