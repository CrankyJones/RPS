#!/usr/bin/env ruby
require_relative('lib/main.rb')
$stdout.sync = true
game = RPS.new()
puts 'Welcome to rock, paper, scissors.'
play_again = 'y'
while (play_again == 'y')
  puts 'Enter a number: 1 for rock, 2 for paper, and 3 for scissors'
  user_input = gets.to_i
  game.input_check(user_input)
  game.wins(user_input)
  puts 'Would you like to play again? Y/N?'
  play_again = gets.downcase()
end