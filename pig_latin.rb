# !/usr/local/bin/ruby
# frozen_string_literal: true

VOWELS = %w[a e i o u].freeze

def find_vowel_in_array(array = [])
  array.find_index { |char| VOWELS.include?(char.downcase) }
end

def pig_latin(word)
  char_array = word.split('')
  vowel_index = find_vowel_in_array(char_array)

  front, main =
    if !vowel_index.nil? && vowel_index.positive?
      [char_array[0...vowel_index], char_array[vowel_index..-1]]
    else
      [[], char_array]
    end

  "#{main.join}#{front.join}ay".capitalize
end

def convert_to_pig_latin(sentence = '')
  words = sentence.split(' ')
  converted_words = words.map do |word|
    pig_latin(word)
  end

  converted_words.join(' ').capitalize
end

puts 'Give me a sentence to convert into Pig Latin'
response = gets.chomp

puts "\n#{convert_to_pig_latin(response)}"
