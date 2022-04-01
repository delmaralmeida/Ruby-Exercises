# !/usr/local/bin/ruby
# frozen_string_literal: true

# Lines
lines = 20
halfway = (lines / 2).floor

# Pattern
puts 'Submit a pattern ex: RRGGYYKK'
puts ''
pattern = gets.chomp

if pattern.empty?
  puts "You didn't submit any patter"
  exit
end

# Fancy
puts 'Should this pattern be fancy? [yes/no]'
puts ''
fancy = gets.chomp.downcase == 'yes'

# Methods
def normal_pattern(pattern)
  pattern[1..-1] + pattern[0]
end

def reverse_pattern(pattern)
  pattern[-1] + pattern[0..(pattern.length - 2)]
end

def generate_pattern(lines, pattern, reverse: false)
  lines.times do
    pattern = reverse ? reverse_pattern(pattern) : normal_pattern(pattern)
    puts pattern
  end
end

puts ''

if fancy
  generate_pattern(halfway, pattern)
  puts pattern
  generate_pattern(halfway, pattern, true)
else
  generate_pattern(lines, pattern)
end
