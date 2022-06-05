# !/usr/local/bin/ruby
# frozen_string_literal: true

NUMERALS = {
  1_000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}.freeze

def convert_to_roman_numeral(number)
  return 'N' if number.zero?

  romanized = ''

  NUMERALS.each_key do |key, _value|
    while key <= number
      romanized += NUMERALS[key]
      number -= key
    end
  end

  romanized
end

response = ''

until response.downcase.include? 'quit'
  puts ''
  puts 'Hey there, choose a number to be converted into a Roman Numeral'
  puts 'Type "quit" to quit'

  response = gets.chomp
  puts ''
  puts "Number: #{response}"
  puts "Roman Numeral: #{convert_to_roman_numeral(response.to_i)}"
  puts ''
end
