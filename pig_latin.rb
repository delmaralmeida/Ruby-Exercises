# !/usr/local/bin/ruby
# frozen_string_literal: true

VOWELS = %w[a e i o u].freeze

def find_vowel_in_array(array = [])
  array.find_index { |char| VOWELS.include?(char) }
end

def pig_latin(word)
  char_array = word.split('')
  vowel_index = find_vowel_in_array(char_array)

  front, main =
    if vowel_index.positive?
      [char_array[0...vowel_index], char_array[vowel_index..-1]]
    else
      [[], char_array]
    end

  "#{main.join}#{front.join}ay".capitalize
end

puts 'Give me a word to convert into Pig Latin'
response = gets.chomp

puts "\n#{pig_latin(response)}"
