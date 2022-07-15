# !/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'dice_roller/dice_set'

# starting message
puts '-' * 26
puts 'Welcome to the Dice Roller'
puts '-' * 26

# variables
dice_types = Dice::DICE_TYPE.keys.join(', ')
response = nil

# program loop
until response == 'q'
  puts "\nCurrent dice sets are [#{dice_types}]"
  puts "Type a dice or 'q' to quit"
  print '> '

  # response validation
  response = gets.chomp
  next if response == 'q'

  # dice value validation
  begin
    dice_set = DiceSet.new(response.split(' '))
    dice_set.roll
    puts dice_set.display
  rescue ArgumentError => e
    puts e
  end
end
