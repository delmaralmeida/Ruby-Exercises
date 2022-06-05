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

def sentence_to_pig_latin(sentence = '')
  words = sentence.split(' ')
  converted_words = words.map do |word|
    pig_latin(word)
  end

  converted_words.join(' ').capitalize
end

def give_word_spacement(word)
  spaces = ''

  word.size.times { spaces += ' ' }

  spaces
end

def display_intro
  puts "\n>> Pig Latin Translator <<\n\n"
  puts 'Type a sentence to translate to pig latin.'
  puts 'Type "quit" to exit the program.'
end

def pig_latin_translator
  label = 'translate: '
  spaces = give_word_spacement(label)

  display_intro
  loop do
    print label
    input = gets.chomp

    exit if input.downcase == 'quit'
    puts "\n#{spaces}#{sentence_to_pig_latin(input)}\n\n"
  end
end

pig_latin_translator
